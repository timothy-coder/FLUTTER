import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/authentication/screens/login/login.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
class VerifyEmailScreen extends StatelessWidget{
  const VerifyEmailScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: ()=>Get.offAll(()=> const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                  image: AssetImage(TImages.primero),
                width: THelperFunctions.screenWidth()*0.6,
              ),
              ///Title & Subtitle

              ///Buttons

            ],
          ),
        ),
      ),
    );
  }
}