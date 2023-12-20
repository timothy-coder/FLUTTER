import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_project_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected Pricing y Descripcion
        TRoundedContainer(
          backgroundColor: dark? TColors.darkerGrey:TColors.grey,
          child: Column(
            children: [

              Row(
                children: [
                  const TSectionHeading(title: 'Variaciones',showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Precio',smallSize: true),
                          Text(
                            'S/25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          const TProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock',smallSize: true,),
                          Text('En Stock',style: Theme.of(context).textTheme.titleMedium)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ///variaciones
              TProductTitleText(
                  title: 'Descripcion del producto',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),


      ],
    );
  }
}
