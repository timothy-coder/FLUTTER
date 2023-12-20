import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_project_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_project_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_project_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/enums.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Precio y Venta
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
              child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            ///Precio
            Text('S/.250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration:TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: 'S/.175',isLarge: true),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/1.5),
        ///Titulo
        const TProductTitleText(title: 'Paracetamol'),
        const SizedBox(width: TSizes.spaceBtwItems/1.5),
        ///Stock
        Row(
          children: [
            const TProductTitleText(title: 'Stock'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('En Stock',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(width: TSizes.spaceBtwItems/1.5),
        ///Marca
        Row(
          children: [
            TCircularImage(
              image: TImages.primero,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white:TColors.black,
            ),
            const TBrandTitleTextWithVerifiedIcon(title: 'Genfar',brandTextSize: TextSizes.medium),
          ],
        ),

      ],
    );
  }
}
