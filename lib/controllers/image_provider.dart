import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobhub_mobile/constants/app_constants.dart';

class ImageUploaderState {
  final List<String> imageUrl;

  ImageUploaderState({this.imageUrl = const []});

  ImageUploaderState copyWith({List<String>? imageUrl}) {
    return ImageUploaderState(imageUrl: imageUrl ?? this.imageUrl);
  }
}

class ImageUploader extends Notifier<ImageUploaderState> {
  final ImagePicker _picker = ImagePicker();

  @override
  ImageUploaderState build() {
    return ImageUploaderState();
  }

  Future<void> pickImage() async {
    XFile? imageFile = await _picker.pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      imageFile = await cropImage(imageFile);
      if (imageFile != null) {
        state = state.copyWith(imageUrl: [...state.imageUrl, imageFile.path]);
      }
    }
  }

  Future<XFile?> cropImage(XFile imageFile) async {
    CroppedFile? croppedFile = await ImageCropper.platform.cropImage(
      sourcePath: imageFile.path,
      maxWidth: 1080,
      maxHeight: 1920,
      compressQuality: 80,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Jobhub Cropper',
          toolbarColor: kLightBlue,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.ratio4x3,
          lockAspectRatio: true,
        ),
        IOSUiSettings(title: 'Cropper'),
      ],
    );

    if (croppedFile != null) {
      return XFile(croppedFile.path);
    } else {
      return null;
    }
  }
}
