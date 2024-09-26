import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run/features/authentication/screens/onboarding/onboarding_controller.dart';
import 'package:run/features/authentication/screens/onboarding/widget/onbording_next_button.dart';
import 'package:run/features/authentication/screens/onboarding/widget/onboarding_dot_navigation.dart';
import 'package:run/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:run/features/authentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:run/util/constants/image_strings.dart';
import 'package:run/util/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(children: [
        /// Horizontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          
          children: const [
          OnboardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1),
          OnboardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2),
          OnboardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3)
        ]),

        /// Skip button
        const OnBoardingSkip(),
        ///Dot navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),
        //Circular Button
        const OnBoardingNextButton()
      ]),
    );
  }
}
