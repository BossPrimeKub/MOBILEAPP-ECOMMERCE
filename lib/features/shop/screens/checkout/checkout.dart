import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectecommerce/common/widgets/appbar/appbar.dart';
import 'package:projectecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:projectecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:projectecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:projectecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:projectecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:projectecommerce/navigation_menu.dart';
import 'package:projectecommerce/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Items in Cart
                const TCartItems(showAddRemoveButtons : false),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// -- Coupon TextField
                TCouponCode(dark: dark),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// -- Billing Section
                TRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(TSizes.md),
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: Column(
                    children: [
                      /// Pricing
                      TBillingAmountSection(),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      /// Divider
                      Divider(),
                      SizedBox(height: TSizes.spaceBtwItems),

                      /// Payment Methods
                      TBillingPaymentSection(),
                      SizedBox(height: TSizes.spaceBtwItems),

                      /// Address
                      TBillingAddressSection(),
                    ],
                  ),
                )
              ],
            ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
        onPressed: () => Get.to(
           () => SuccessScreen(
           image: TImages.successfulPaymentIcon,
           title: 'Payment Success!',
           subTitle: 'Your item will be shipped soon!',
           onPressed: () => Get.offAll(() => const NavigationMenu()),
        ),
       ),
      child: const Text('Checkout \$256.0')),
      ),
    );
  }
}

