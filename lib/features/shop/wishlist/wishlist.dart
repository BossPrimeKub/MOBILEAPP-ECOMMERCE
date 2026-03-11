import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:projectecommerce/common/widgets/appbar/appbar.dart';
import 'package:projectecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:projectecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:projectecommerce/features/shop/screens/home/home.dart';

import '../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../utils/constants/size.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical())],
          ),
        ),
      ),
    );
  }
}
