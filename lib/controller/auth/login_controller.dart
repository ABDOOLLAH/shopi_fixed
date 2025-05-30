import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;

  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;

    update();
  }

  @override
  login() {
    var formdate = formstate.currentState;
    if (formdate!.validate()) {} else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signup);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPssword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
