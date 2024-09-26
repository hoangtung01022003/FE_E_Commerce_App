import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:run/common/styles/spacing_styles.dart';
import 'package:run/common/widgets/login_signup/form_divider.dart';
import 'package:run/common/widgets/login_signup/social_buttons.dart';
import 'package:run/features/authentication/screens/login/widgets/login_form.dart';
import 'package:run/features/authentication/screens/login/widgets/login_header.dart';
import 'package:run/util/constants/colors%20copy.dart';
import 'package:run/util/constants/image_strings.dart';
import 'package:run/util/constants/sizes.dart';
import 'package:run/util/constants/text_strings.dart';
import 'package:run/util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(children: [
              const LoginHeader(),
              //form
              const LoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!), //capitalize! the hien ki tu dau la in hoa, va khong rong
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const SocialButtons()
            ])),
      ),
    );
  }
}
