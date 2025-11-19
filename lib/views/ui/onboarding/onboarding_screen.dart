import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobhub_mobile/providers/onboarding_provider.dart';
import 'package:jobhub_mobile/views/ui/onboarding/widgets/page_one.dart';
import 'package:jobhub_mobile/views/ui/onboarding/widgets/page_three.dart';
import 'package:jobhub_mobile/views/ui/onboarding/widgets/page_two.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final isLastPage = ref.watch(onBoardNotifierProvider);
          return Stack(
            children: [
              PageView(
                physics: isLastPage
                    ? const NeverScrollableScrollPhysics()
                    : const AlwaysScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (page) {
                  ref
                      .read(onBoardNotifierProvider.notifier)
                      .setIsLastPage(page == 2);
                },
                children: const [PageOne(), PageTwo(), PageThree()],
              ),
            ],
          );
        },
      ),
    );
  }
}
