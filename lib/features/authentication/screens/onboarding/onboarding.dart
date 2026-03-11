import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:projectecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:projectecommerce/features/authentication/screens/onboarding/widgets/onboarding_next.button.dart';
import 'package:projectecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:projectecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:projectecommerce/utils/constants/image_strings.dart';
import 'package:projectecommerce/utils/constants/text_string.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

@override
Widget build(BuildContext context) {
  final controller=Get.put(OnBoardingController());
  return Scaffold(
    body:
    Stack(
      children: <Widget>[
        //horizontal scrollable pages
        PageView(
          controller: controller.pageController,  //which page is currently visible to get that
          onPageChanged: controller.updatePageIndicator,
          children: [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subtitle: TTexts.onBoardingSubtitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subtitle: TTexts.onBoardingSubtitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subtitle: TTexts.onBoardingSubtitle3,
            ),
          ],
        ),
        //skip button
        OnBoardingSkip(),
        //smooth page indicator
        OnBoardingDotNavigation(),
        //circular button
        OnBoardingNextButton()
      ],
    ),
  );
}
}