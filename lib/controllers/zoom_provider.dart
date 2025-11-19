import 'package:flutter_riverpod/flutter_riverpod.dart';

class ZoomNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void setCurrentIndex(int newIndex) {
    state = newIndex;
  }
}
