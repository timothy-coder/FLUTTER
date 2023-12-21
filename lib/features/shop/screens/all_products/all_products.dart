import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_project_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Productos Populares'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                onChanged: (value){},
                  items: [
                    'Nombre','Precio Alto','Precio Bajo','Nuevos']
                      .map((option) => DropdownMenuItem(
                    
                      child: Text(option))).toList(),

              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProductCardVertical())
            ],
          ),
        ),
      ),
    );

  }
}
