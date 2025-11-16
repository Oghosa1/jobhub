import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/controllers/zoom_provider.dart';

final zoomNotifierProvider = NotifierProvider<ZoomNotifier, int>(() {
  return ZoomNotifier();
});
