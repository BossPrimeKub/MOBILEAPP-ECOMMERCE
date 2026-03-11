import 'package:flutter/material.dart';
import 'package:projectecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:projectecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

import '../../../../utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
});


  final Widget child;

  @override
    Widget build(BuildContext context) {
      return TCurvedEdgeWidget(
        child: Container(
            color: TColors.primary,
            padding: const EdgeInsets.only(bottom: 0),

            /// -- If [size.isFinite':F is not true.in Stack] error occurred -> Read README.md file at
            child: Stack(
              children: [
                /// -- Background custom Shapes
                Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withValues(alpha: 0.1))),
                Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withValues(alpha: 0.1))),
                child,
              ],
            ),
          ),
      );
  }
}
