import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void setLoginState(bool state) {
    this.state = state;
  }
}
