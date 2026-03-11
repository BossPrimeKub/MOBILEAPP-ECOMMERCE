import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectecommerce/common/widgets/appbar/appbar.dart';
import 'package:projectecommerce/features/shop/screens/checkout/checkout.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/size.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// -Items in Cart
        child: TCartItem(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}


