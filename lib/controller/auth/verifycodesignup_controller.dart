import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/auth/verifycodesiginup.dart';

abstract class VerifycodesignupController extends GetxController {
  String? email;
  StatusRequest? statusRequest;
  checCode();

  goTosuccessSignUp(String verfiyCodeSignUp);
}

class VerifycodesignupControllerImp extends VerifycodesignupController {
  VerifycodesiginupDate verifycodesiginupDate=VerifycodesiginupDate(Get.find());
  @override
  checCode() {}

  @override
  goTosuccessSignUp(verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    print("Email: $email - Code: $verfiyCodeSignUp");
    try {
      var response = await verifycodesiginupDate.postData(email!, verfiyCodeSignUp);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if(response['status']=="success"){
          Get.offNamed(AppRoutes.successSignUp);
        }else{
          Get.defaultDialog(title: "Warning", middleText: "verify code not correct");
          statusRequest = StatusRequest.failure;
        }
      }
    } catch (e) {
      print("Exception: $e");
      Get.defaultDialog(title: "خطأ", middleText: "حصل خطأ في الاتصال بالسيرفر");
      statusRequest = StatusRequest.failure;
    }
    update();
  }


  @override
  void onInit() {
    email =Get.arguments['email'];
    super.onInit();
  }
}
