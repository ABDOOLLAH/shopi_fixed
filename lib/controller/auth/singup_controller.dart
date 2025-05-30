import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class SingupController extends GetxController{
  GlobalKey<FormState> formstate=GlobalKey<FormState>();

  singup();
  signuoV();
  goToSignIn();
}
class SingupControllerImp extends SingupController{
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController password;
  @override
  signuoV() {
    // TODO: implement signuoV

  }
  @override
  singup() {
    var formdate=formstate.currentState;
    if(formdate!.validate()){
      Get.offNamed(AppRoutes.verfiyCodesignup);
    }else{}

  }
  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.login);
  }
  @override
  void onInit() {
    email=TextEditingController();
    password=TextEditingController();
    username=TextEditingController();
    phone=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}