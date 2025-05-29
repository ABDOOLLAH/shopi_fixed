import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class ResetpasswordController  extends GetxController{
  resetpassword();
  goToSuccessResetPassword();
}
class ResetpasswordControllerImp extends ResetpasswordController{
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  resetpassword() {

  }
  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.verfiyCode);
  }
  @override
  void onInit() {
    password=TextEditingController();
    repassword=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}