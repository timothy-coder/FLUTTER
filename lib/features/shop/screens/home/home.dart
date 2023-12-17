import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///SearchBar
                  const TSearchContainer(text: 'Search in Vademecum',),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Categorias
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(title: 'Categorias Populares',showActionButton: false,),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        ///Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_,index) {
                                return Column(
                                  children: [
                                    Container(
                                      width: 56,
                                      height: 56,
                                      padding: const EdgeInsets.all(TSizes.sm),
                                      decoration: BoxDecoration(
                                        color: TColors.white,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    )
                                  ],
                                );
                              },
                          ),
                        )
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
