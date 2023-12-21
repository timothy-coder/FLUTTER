import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_project_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_project_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_project_app/common/widgets/texts/t_brand_title_text.dart';
import 'package:flutter_project_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
        ),
      child: Row(
        children: [
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: const Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: TRoundedImage(imageUrl: TImages.producto1,applyImageRadius: true),
                ),

              ],
            ),
          ),

          const SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
                    child: Column(
                      children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TProductTitleText(title: 'Paracetamol',smallSize: true,),
                            SizedBox(height: TSizes.spaceBtwItems/2,),
                            TBrandTitleTextWithVerifiedIcon(title: 'Genfar')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: TProductPriceText(price: '30.00')),

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
