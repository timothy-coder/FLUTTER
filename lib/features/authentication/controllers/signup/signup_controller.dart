import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUpController extends GetxController {
  static SignUpController get instance =>Get.find();

  final email=TextEditingController();
  final lastname=TextEditingController();
  final username=TextEditingController();
  final password=TextEditingController();
  final firstname=TextEditingController();
  final phonenumber=TextEditingController();
  GlobalKey<FormState> signupFormKey =GlobalKey<FormState>();
  Future<void>signup()async{
    try{

    }catch (e){

    }finally{

    }
  }
}
