import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/shop/screens/products_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_project_app/features/shop/screens/products_details/widgets/product_meta_data.dart';
import 'package:flutter_project_app/features/shop/screens/products_details/widgets/rating_share_widget.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///1 product Image Slider
            TProductImageSlider(),
            ///2 Product Details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Rating & Share
                  TRatingAndShare(),
                  ///Precio, Titulo, Stock y Marca
                  TProductMetaData(),
                  ///Atributos
                  ///checkoutButton
                  ///Descripcion
                  ///Vistas
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
