import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectecommerce/common/styles/spacing_styles.dart';
import 'package:projectecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:projectecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:projectecommerce/utils/constants/size.dart';
import 'package:projectecommerce/utils/constants/text_string.dart';
import 'package:projectecommerce/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo title and subtitle
              TLoginHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spaceBtwSections),
                child: TLoginForm(),
              ),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwItems,),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}