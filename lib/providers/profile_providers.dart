import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/controllers/profile_provider.dart';

final profileNotifierProvider = NotifierProvider<ProfileNotifier, bool>(() {
  return ProfileNotifier();
});
