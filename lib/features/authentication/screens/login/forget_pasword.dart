import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:run/common/widgets/success_screen/success_creen.dart';
import 'package:run/features/authentication/screens/login/login.dart';
import 'package:run/util/constants/colors%20copy.dart';
import 'package:run/util/constants/image_strings.dart';
import 'package:run/util/constants/sizes.dart';
import 'package:run/util/constants/text_strings.dart';

class ForgetPaswordScreen extends StatelessWidget {
  const ForgetPaswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColors.white,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear),
              )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(TTexts.forgetPasswordTitle,
                  // textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelSmall,
                selectionColor: TColors.textWhite),
            const SizedBox(height: TSizes.appBarHeight),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            const SizedBox(height: TSizes.buttonHeight),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => SuccessCreen(
                    image: TImages.staticSuccessIllustration,
                    title: TTexts.changeYourPasswordTitle,
                    subTitle: TTexts.changeYourPasswordSubTitle,
                    button: TTexts.done,
                    onPressed: () => Get.to(() => const LoginScreen()))),
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.primary,
                ),
                child: const Text(TTexts.submit,
                    style: TextStyle(color: TColors.white)),
              ),
            ),
            const SizedBox(height: TSizes.buttonElevation),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmail))),
          ]),
        ),
      ),
    );
  }
}
