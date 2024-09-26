import 'package:flutter/material.dart';
import 'package:run/util/constants/colors%20copy.dart';
import 'package:run/util/constants/sizes.dart';
import 'package:run/util/constants/text_strings.dart';
import 'package:run/util/helpers/helper_functions.dart';

class TTermsAndConditionsCheckbox extends StatelessWidget {
  const TTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          const TextSpan(
              text: '${TTexts.iAgreeTo}', style: TextStyle(fontSize: 11)),
          TextSpan(
              text: ' ${TTexts.privacyPolicy}',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary,
                    fontSizeFactor: 0.9, //chinh sua size chu
                  )),
          const TextSpan(text: '${TTexts.and}', style: TextStyle(fontSize: 11)),
          TextSpan(
              text: ' ${TTexts.termsOfUse}',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary,
                    fontSizeFactor: 0.9,
                  )),
        ]))
      ],
    );
  }
}
