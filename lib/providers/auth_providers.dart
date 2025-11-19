import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/controllers/login_provider.dart';
import 'package:jobhub_mobile/controllers/signup_provider.dart';

final loginNotifierProvider = NotifierProvider<LoginNotifier, bool>(() {
  return LoginNotifier();
});

final signupNotifierProvider = NotifierProvider<SignUpNotifier, SignUpState>(
  () {
    return SignUpNotifier();
  },
);
