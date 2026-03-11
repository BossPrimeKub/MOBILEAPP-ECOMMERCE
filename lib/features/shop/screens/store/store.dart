import 'package:flutter/material.dart';
import 'package:projectecommerce/common/widgets/appbar/appbar.dart';
import 'package:projectecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:projectecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:projectecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:projectecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:projectecommerce/common/widgets/texts/section_heading.dart';
import 'package:projectecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:projectecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:projectecommerce/utils/constants/colors.dart';
import 'package:projectecommerce/utils/constants/enums.dart';
import 'package:projectecommerce/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
        /// -- Appbar -- Tutorial [Section #3, Video #7]
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [TCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          // -- Header -- Tutorial [Section #3, Video # 7]
            headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child:ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search bar
                      SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(
                          text: 'Search in Store', showBorder: true, showBackground: false),
                      SizedBox(height: TSizes.spaceBtwSections),

                      /// -- Featured Brands
                      TSectionHeading(title: 'Featured Brands', onPressed: (){}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      /// -- Brands GRID
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: (){},
                          child: TRoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                /// -- Icon
                                Flexible(
                                  child: TCircularImage(
                                    isNetWorkImage: false,
                                    image: TImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                                  ),
                                ),
                                const SizedBox(width: TSizes.spaceBtwItems / 2),

                                /// -- Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min ,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
                                      Text(
                                        '256 products with',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.labelMedium,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                    ],
                  ) ,
              ),
              /// Tab -- Tutorial [Section # 3, Video # 8]
              bottom: const TTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
              ),
          ];
            },

          /// -- Body Tutorial [Section # 3, Video # 8]
            body: const TabBarView(
                children: [TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab()],

                    ),
                  ),
            ),
        );
  }
}

