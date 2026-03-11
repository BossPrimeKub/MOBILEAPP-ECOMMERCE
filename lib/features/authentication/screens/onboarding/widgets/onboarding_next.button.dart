import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:projectecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device.utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(shape: CircleBorder()),
            child: Icon(Iconsax.arrow_right_3)));
  }
}