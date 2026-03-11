import 'package:flutter/material.dart';
import 'package:projectecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device.utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () =>OnBoardingController.instance.skipPage(),
          child: Text("Skip"),
        ));
  }
}