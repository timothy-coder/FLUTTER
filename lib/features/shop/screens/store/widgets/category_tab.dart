import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_project_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              const TBrandShowcase(images: [TImages.producto1,TImages.producto1,TImages.producto1]),
              const SizedBox(height: TSizes.spaceBtwItems),
              ///Products
              TSectionHeading(title: 'Favoritas',showActionButton: true,onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ]
    );
  }
}
