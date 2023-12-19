import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/appbar/tabbar.dart';
import 'package:flutter_project_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_project_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_project_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brands/brand_show_case.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium),
          actions: [TCartCounterIcon(onPressed: (){})],
        ),
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
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        TSectionHeading(title: 'Marcas',onPressed: (){},),
                        const SizedBox(height: TSizes.spaceBtwItems/1.5),

                        TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_,index){
                            return const TBrandCard(showBorder:false);
                          },
                        ),
                      ],
                    ),
                  ),
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Farmacias')),
                      Tab(child: Text('Farmacias')),
                      Tab(child: Text('Farmacias')),
                      Tab(child: Text('Farmacias')),
                      Tab(child: Text('Farmacias')),
                    ],
                  )
              ),
            ];
          }, body: const TabBarView(
            children: [
                  TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
        ),
        ),

      ),
    );
  }
}
