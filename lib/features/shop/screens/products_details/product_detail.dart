import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/features/shop/screens/product_reviews/product_review.dart';
import 'package:flutter_project_app/features/shop/screens/products_details/widgets/product_attributes.dart';
import 'package:flutter_project_app/features/shop/screens/products_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_project_app/features/shop/screens/products_details/widgets/product_meta_data.dart';
import 'package:flutter_project_app/features/shop/screens/products_details/widgets/rating_share_widget.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///1 product Image Slider
            const TProductImageSlider(),
            ///2 Product Details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Rating & Share
                  const TRatingAndShare(),
                  ///Precio, Titulo, Stock y Marca
                  const TProductMetaData(),
                  ///Atributos
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  ///Descripcion
                  const TSectionHeading(title: 'Descripcion',showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                      'parecetmaol',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Ver mas',
                    trimExpandedText: 'Menos',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),
                  ///Vistas
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Comentarios(199)',showActionButton: false),
                      IconButton(onPressed: ()=>Get.to(()=>const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
