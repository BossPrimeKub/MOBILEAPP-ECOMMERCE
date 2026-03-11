import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectecommerce/features/shop/screens/all_products/all_products.dart';
//import 'package:projectecommerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:projectecommerce/features/shop/screens/home/widgets/home_categoires.dart';
import 'package:projectecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:projectecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header -- Tutorial [Section # 3, video # 2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar -- tutorial [Section # 3, Video # 3]
                  THomeAppBar(),
                  const SizedBox(
                      height: TSizes.spaceBtwSections,
                  ),

                  /// --- Searchbar -- Tutorial [Section # 3, video # 4]
                  TSearchContainer(
                      text: 'Search in Store',
                      icon: Icons.search,
                      showBackground: true,
                      showBorder: true,
                      onTap: () {},
                  ),

                  SizedBox(
                      height: TSizes.spaceBtwSections,
                  ),

                  /// --- categories -- Tutorial [Section #3, Video # 4]
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child:  Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                            showActionButton: false,
                        ),
                        SizedBox(
                            height: TSizes.spaceBtwItems,
                        ),
                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),
            /// Body -- Tutorial [Section #3, video #5]
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider -- Tutorial [Section # 3, video # 6]
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
                  const SizedBox(height: TSizes.spaceBtwSections),

                 /// -- Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// --Popular Products -- Tutorial [Section # 3, Video # 7]
                   TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



