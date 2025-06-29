import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/frogetpassword/verifycode.dart';

abstract class VerifycodeController extends GetxController {
  late String verifycode;

  checkCode();

  goToResetPassword(verfiycode);
}
//3y5Uqz6Nnst9
class VerifycodeControllerImp extends VerifycodeController {
  String? email;
  StatusRequest statusRequest=StatusRequest.none;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  checkCode() {
    var formdate = formstate.currentState;
    if (formdate!.validate()) {
    } else {}
  }

  @override
  goToResetPassword(verfiycode) async {
    statusRequest = StatusRequest.loading;
    update();
    print("Email: $email - Code: $verfiycode");
    try {
      var response = await verifyCodeForgetPasswordData.postData(
        email!,
        verfiycode,
      );
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoutes.resetPassword , arguments: {
            "email" : email
          });
        } else {
          Get.defaultDialog(
            title: "Warning",
            middleText: "verify code not correct",
          );
          statusRequest = StatusRequest.failure;
        }
      }
    } catch (e) {
      print("Exception: $e");
      Get.defaultDialog(
        title: "خطأ",
        middleText: "حصل خطأ في الاتصال بالسيرفر",
      );
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
  }
}
