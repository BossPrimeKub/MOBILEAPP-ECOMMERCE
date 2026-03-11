
import 'package:flutter/cupertino.dart';

import '../../utils/constants/size.dart';
//edgeInsetGeometry ระยะห่างในแนวตั้งแนวนอน
class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}


