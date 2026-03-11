import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:projectecommerce/common/widgets/appbar/appbar.dart';
import 'package:projectecommerce/common/widgets/images/t_circular_image.dart';
import 'package:projectecommerce/common/widgets/texts/section_heading.dart';
import 'package:projectecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profile')),
      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Profile Picture
               SizedBox(
                 width: double.infinity,
                 child: Column(
                    children: [
                  TCircularImage(image: TImages.user, width: 80, height: 80),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
               ],
              ),
            ),

            /// Details
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Heading Profile Info
            const TSectionHeading(title: 'Profile Information', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(title: 'Name', value: 'Coding with T', onPressed: () {}),
            TProfileMenu(title: 'Username', value: 'Coding with t', onPressed: () {}),

            const SizedBox(height: TSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(title: 'User ID', value: '45689', icon: Iconsax.copy, onPressed: () {}),
            TProfileMenu(title: 'E-mail', value: 'coding_with_t', onPressed: () {}),
            TProfileMenu(title: 'Phone Number', value: '+92-317-8059528', onPressed: () {}),
            TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
            TProfileMenu(title: 'Date of Birth', value: '10 Oct 1994', onPressed: () {}),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
              ),
            )

          ],
         ),
       ),
      ),
    );
  }
}
