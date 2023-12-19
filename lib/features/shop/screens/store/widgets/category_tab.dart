import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (_,innerBoxIsScrolled){
          return[
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 440,
              automaticallyImplyLeading: false,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black:TColors.white,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(
                        text: 'Search in Store',showBorder: true,showBackground: false, padding: EdgeInsets.zero
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    
                    TSectionHeading(title: 'Marcas',onPressed: (){},),
                    const SizedBox(height: TSizes.spaceBtwItems/1.5),
                  ],
                ),
              ),
            )
          ]
        }
      ),
    );
  }
}
