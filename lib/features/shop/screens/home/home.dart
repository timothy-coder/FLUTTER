import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_project_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_project_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_project_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_project_app/features/shop/screens/all_products/all_products.dart';
import 'package:flutter_project_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_project_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_project_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_project_app/common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///SearchBar
                  TSearchContainer(text: 'Search in Vademecum',),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Categorias
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(title: 'Categorias Populares',showActionButton: false,textColor: TColors.white),
                        SizedBox(height: TSizes.spaceBtwItems),
                        ///Categories
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              )
            ),

            /// Body -- Tutorial [Section #3, video #5]
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider -- Tutorial [Section #3, Video #6]
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///  -- Heading
                  TSectionHeading(title: 'Popular Products',onPressed: () => Get.to (() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Promo Slider -- Tutorial [Section #3, Video #7]
                  TGridLayout(itemCount: 2, itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


