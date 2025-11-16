import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/controllers/onboarding_provider.dart';

final onBoardNotifierProvider = NotifierProvider<OnBoardNotifier, bool>(() {
  return OnBoardNotifier();
});
