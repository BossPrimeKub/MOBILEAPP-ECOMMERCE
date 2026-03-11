import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:projectecommerce/data/repositories/user/user_repository.dart';
import 'package:projectecommerce/features/authentication/screens/signup/verify_email.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network.manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';
import '../../models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();


  /// Variables
  final hidePassword = true.obs;// Observable for hiding/showing password
  final privacyPolicy = true.obs; // Observable for hiding/showing password
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for first name input
  final phoneNumber = TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form key for form validation

  /// -- SIGNUP
 void signup() async {
   try {
     // Start Loading
     TFullScreenLoader.openLoadingDialog('We are processing your information...', TImages.docerAnimation); //รอแก้TImages.docerAnimation // ตัวร้าย

     // Check Internet Connectivity
     final isConnected = await NetworkManager.instance.isConnected();
     if (!isConnected) {
       // Remove Loader
       TFullScreenLoader.stopLoading();
       return;
     }

       // Form Validation
       if(!signupFormKey.currentState!.validate()) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
        }

       // Privacy Policy Check
       if(!privacyPolicy.value) {
         TLoaders.warningSnackBar(
           title: 'Accept Privacy Policy',
           message: 'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.',
         );
         return;
       }

       // Register user in the Firebase Authentication & Save user data in the Firebase
       final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

       // Save Authenticated user data in the Firebase Firestore
       final newUser = UserModel(
         id: userCredential.user!.uid,
         firstName: firstName.text.trim(),
         lastName: lastName.text.trim(),
         username: username.text.trim(),
         email: email.text.trim(),
         phoneNumber: phoneNumber.text.trim(),
         profilePicture: '',
       );

       final userRepository = Get.put(UserRepository());
       await userRepository.saveUserRecord(newUser);

       // Remove Loader
      TFullScreenLoader.stopLoading();

       // Show Success Message
       TLoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created! verify email to continue.');

       // Move to Verify Email Screen
       Get.to(() => VerifyEmailScreen(email: email.text.trim()));

   } catch (e) {
     // Remove Loader
     TFullScreenLoader.stopLoading();

     //show more Generic Error to the user
     TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
   }
  }
}
