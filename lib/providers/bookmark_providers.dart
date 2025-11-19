import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/controllers/bookmark_provider.dart';

final bookmarkNotifierProvider = NotifierProvider<BookMarkNotifier, bool>(() {
  return BookMarkNotifier();
});
