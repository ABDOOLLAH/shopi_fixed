import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/frogetpassword/resetpassword.dart';

abstract class ResetpasswordController extends GetxController {
  resetpassword();

  goToSuccessResetPassword();
}

class ResetpasswordControllerImp extends ResetpasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  StatusRequest statusRequest=StatusRequest.none;

  late TextEditingController password;
  late TextEditingController repassword;

  String? email;
  @override
  resetpassword() async{
    if(password.text!=repassword.text)return Get.defaultDialog(title: "warning",middleText:"Passwor Not Match" );
    var formdate = formstate.currentState;
    if (formdate!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoutes.successResetpassword);
        } else {
          Get.defaultDialog(
            title: "Warning",
            middleText: "Try Again",
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successResetpassword);
  }

  @override
  void onInit() {
    email =Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
