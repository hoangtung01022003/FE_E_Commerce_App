import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:run/common/widgets/login_signup/form_divider.dart';
import 'package:run/common/widgets/login_signup/social_buttons.dart';
import 'package:run/features/authentication/screens/signup/verify_email.dart';
import 'package:run/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:run/util/constants/colors%20copy.dart';
import 'package:run/util/constants/sizes.dart';
import 'package:run/util/constants/text_strings.dart';
import 'package:run/util/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(children: [
              ///Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              const TSignup_form(),

              /// Button Create Acccount
              const SizedBox(height: TSizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const VerifyEmailScreen()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.primary,
                  ),
                  child: const Text(
                    TTexts.createAccount,
                    style: TextStyle(color: TColors.white),
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSections),

              const SocialButtons()
            ])),
      ),
    );
  }
}
