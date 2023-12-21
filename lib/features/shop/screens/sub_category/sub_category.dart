import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_project_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutter_project_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
class SubCategoriasScreen extends StatelessWidget {
  const SubCategoriasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Laboratorios'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(width: double.infinity,height: null,imageUrl: TImages.primero,applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections),

              Column(
                children: [
                  TSectionHeading(title: 'Genfar',onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems/2),

                  ListView.builder(
                      itemCount: 6,
                      itemBuilder:(context,index) =>const TProductCardHorizontal()
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
