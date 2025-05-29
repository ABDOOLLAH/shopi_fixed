import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class CheckemailController  extends GetxController{
  checkemail();
  goToVerfiyCode();
}
class CheckemailControllerImp extends CheckemailController{
  late TextEditingController email;
  @override
  checkemail() {

  }
  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoutes.verfiyCodesignup);
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