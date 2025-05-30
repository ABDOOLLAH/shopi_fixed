import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class ResetpasswordController  extends GetxController{
  resetpassword();
  goToSuccessResetPassword();
}
class ResetpasswordControllerImp extends ResetpasswordController{
  GlobalKey<FormState> formstate=GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;
  @override
  resetpassword() {
    var formdate=formstate.currentState;
    if(formdate!.validate()){

    }else{}
  }
  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successResetpassword);
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