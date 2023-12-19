import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/icons/t_circular_icon.dart';
import 'package:flutter_project_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_project_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_project_app/features/shop/screens/home/home.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: ()=>Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_,index)=> const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
