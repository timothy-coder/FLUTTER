import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_project_app/features/authentication/screens/login/login.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/constants/text_strings.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
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
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                  image: const AssetImage(TImages.primero),
                width: THelperFunctions.screenWidth()*0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              ///Title & Subtitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text('support@codingwitht.com', style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubtitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>Get.to(
                        ()=>SuccessScreen(
                          image: TImages.segundo,
                          title: TTexts.yourAccountCreatedTitle,
                          subTitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed: ()=>Get.to(()=>const LoginScreen()
                          )
                        ),
                  ),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: const Text(TTexts.resendEmail),),),
            ],
          ),
        ),
      ),
    );
  }
}