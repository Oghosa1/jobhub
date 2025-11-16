import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/controllers/jobs_provider.dart';

final jobsNotifierProvider = NotifierProvider<JobsNotifier, bool>(() {
  return JobsNotifier();
});
