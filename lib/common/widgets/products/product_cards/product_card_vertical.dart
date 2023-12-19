<<<<<<< Updated upstream
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
=======
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';

>>>>>>> Stashed changes
class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    final dark= THelperFunctions.isDarkMode(context);
=======
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius ans shadow.
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
          ///Thumbnail, Wishlist, Discount
=======
          /// Thumbnail, Wishlist Button, Discount Tag
>>>>>>> Stashed changes
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
<<<<<<< Updated upstream
                const TRoundedImage(imageUrl: TImages.producto1, applyImageRadius: true,),

                
=======
                /// Thumbnail, WhisList Button, Discount Tag
                const TRoundedImage(imageUrl: TImage.productImage1, applyImageRadious: true),

                /// -- Sale Tag
>>>>>>> Stashed changes
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
<<<<<<< Updated upstream
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
=======
                    backgroundColor: TColors.secondary.withOpacity(0,8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                )
              ],
            ),
          ),
          /// -- Details

        ],
      )
    );
  }
}
>>>>>>> Stashed changes
