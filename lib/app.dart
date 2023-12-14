import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_project_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_project_app/utils/theme/theme.dart';
class App extends StatelessWidget{
  const App ({super.key});
  @override
  ///MaterialApp o GetMaterialApp
  Widget build(BuildContext context){
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}