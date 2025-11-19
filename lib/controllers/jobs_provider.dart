import 'package:flutter_riverpod/flutter_riverpod.dart';

class JobsNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void setJobState(bool state) {
    this.state = state;
  }
}
