import 'package:flutter/material.dart';
import 'package:projectecommerce/common/widgets/brands/t_brand_card.dart';
import 'package:projectecommerce/common/widgets/products/sortable/sortable_products.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/size.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Brand Detail
                TBrandCard(showBorder: true),
                SizedBox(height: TSizes.spaceBtwSections),

                TSortableProducts(),
              ],
            ),
        ),
      ),
    );
  }
}
