import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpState {
  final bool isObsecure;
  final bool processing;
  final bool firstTime;

  SignUpState({
    this.isObsecure = true,
    this.processing = false,
    this.firstTime = false,
  });

  SignUpState copyWith({bool? isObsecure, bool? processing, bool? firstTime}) {
    return SignUpState(
      isObsecure: isObsecure ?? this.isObsecure,
      processing: processing ?? this.processing,
      firstTime: firstTime ?? this.firstTime,
    );
  }
}

class SignUpNotifier extends Notifier<SignUpState> {
  @override
  SignUpState build() {
    return SignUpState();
  }

  void setIsObsecure(bool obsecure) {
    state = state.copyWith(isObsecure: obsecure);
  }

  void setProcessing(bool newValue) {
    state = state.copyWith(processing: newValue);
  }

  void setFirstTime(bool newValue) {
    state = state.copyWith(firstTime: newValue);
  }

  final signupFormKey = GlobalKey<FormState>();

  bool passwordValidator(String password) {
    if (password.isEmpty) return false;
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(password);
  }

  bool validateAndSave() {
    final form = signupFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
