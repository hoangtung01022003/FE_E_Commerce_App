import 'package:flutter/material.dart';
import 'package:run/util/constants/colors%20copy.dart';
import 'package:run/util/constants/image_strings.dart';
import 'package:run/util/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const   SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon:  const Image(width: TSizes.iconMd,height: TSizes.iconMd, image: AssetImage(TImages.google)),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
        child: IconButton(
            onPressed: () {},
            icon:  const Image(width: TSizes.iconMd,height: TSizes.iconMd, image: AssetImage(TImages.facebook)),
          ),
        )
      ],
    );
  }
}

