import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/features/perzonalization/screens/address/add_new_address.dart';
import 'package:flutter_project_app/features/perzonalization/screens/address/widgets/single_address.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
          onPressed: ()=>Get.to(()=>const AddNewAddressScreen()),
        child: Icon(Iconsax.add,color: TColors.white),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cuentas',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
