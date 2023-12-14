import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_project_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/constants/text_strings.dart';
import 'package:flutter_project_app/utils/device/device_utility.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
import 'package:flutter_project_app/utils/theme/custom_themes/text_theme.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context){
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Pages Horizontal
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          ///Skip Button
          const OnBoardingSkip(),
          ///Dot Navigation Smoothpage
          const OnBoardingDotNavigation(),
          ///Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

