import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/controllers/image_provider.dart';

final imageUploaderProvider =
    NotifierProvider<ImageUploader, ImageUploaderState>(() {
      return ImageUploader();
    });
