import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_project_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
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
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
