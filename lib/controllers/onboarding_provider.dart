import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void onLastPage(bool lastpage) {
    state = lastpage;
  }
}
