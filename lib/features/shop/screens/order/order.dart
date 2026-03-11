import 'package:flutter/material.dart';
import 'package:projectecommerce/common/widgets/appbar/appbar.dart';
import 'package:projectecommerce/features/shop/screens/order/widgets/orders_list.dart';

import '../../../../utils/constants/size.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: TAppBar(title: Text('My orders', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// -- Orders
        child: TOrderListItems(),
      )
    );
  }
}
