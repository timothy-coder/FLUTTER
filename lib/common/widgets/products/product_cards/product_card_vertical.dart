import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          ///Thumbnail, Wishlist, Discount
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const TRoundedImage(imageUrl: TImages.producto1, applyImageRadius: true,),

                
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                    child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),
                const Positioned(
                  top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,))
              ],
            ),
          )
          ///details
          Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                children: [
                  Text(
                    'Paracetamol',
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  )
                ],
              ),
          )

        ],
      ),
    );
  }
}
