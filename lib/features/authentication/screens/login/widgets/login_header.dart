import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: TSizes.productImageSize,
          image: AssetImage(
            dark ? TImages.lightAppLogo : TImages.darkAppLogo,
          ),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubtitle,
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        )
      ],
    );
  }
}