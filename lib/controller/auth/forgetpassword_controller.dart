import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class ForgetpasswordController  extends GetxController{
  GlobalKey<FormState> formstate=GlobalKey<FormState>();

  checkemail();
  goToVerfiycode();
}
class ForgetpasswordControllerImp extends ForgetpasswordController{
  late TextEditingController email;
  @override
  checkemail() {

  }
  @override
  goToVerfiycode() { var formdate=formstate.currentState;
  if(formdate!.validate()){
      Get.offNamed(AppRoutes.verfiyCode);
    }else{}

  }
  @override
  void onInit() {
    email=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}