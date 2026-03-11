import 'package:flutter/material.dart';
import 'package:projectecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:projectecommerce/common/widgets/images/t_circular_image.dart';
import 'package:projectecommerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:projectecommerce/utils/constants/enums.dart';
import 'package:projectecommerce/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/size.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      /// Container Design
      child: TRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Icon
            Flexible(
                child: TCircularImage(
          isNetWorkImage: false,
          image: TImages.clothIcon,
          backgroundColor: Colors.transparent,
          overlayColor: isDark ? TColors.white : TColors.black,
           ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),

            /// -- Texts
            /// [Expanded]
            /// to keep text inside the boundaries.
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
                  Text(
                    '25 products',
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
  }
}
