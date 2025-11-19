import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void setProfileState(bool state) {
    this.state = state;
  }
}
