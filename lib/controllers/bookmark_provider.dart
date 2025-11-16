import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookMarkNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void setBookMarkState(bool state) {
    this.state = state;
  }
}