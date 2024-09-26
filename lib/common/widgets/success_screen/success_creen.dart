import 'package:flutter/material.dart';
import 'package:run/common/styles/spacing_styles.dart';
import 'package:run/util/constants/colors%20copy.dart';
import 'package:run/util/constants/sizes.dart';
import 'package:run/util/helpers/helper_functions.dart';

class SuccessCreen extends StatelessWidget {
  const SuccessCreen(
      {super.key,
      required,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed,
      required this.button});
  final String image, title, subTitle, button;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Image
            Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.7),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Title and  Subtitle
            Text(title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            Text(subTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                child: Text(
                  button,
                  style: const TextStyle(color: TColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
