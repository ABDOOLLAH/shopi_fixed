import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/frogetpassword/chekemail.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {

  CheckEmailData checkEmailData  = CheckEmailData(Get.find()) ;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  StatusRequest? statusRequest ;

  late TextEditingController email;

  @override
  checkemail() async  {
    if (formstate.currentState!.validate()){
      statusRequest = StatusRequest.loading;
      update() ;
      var response = await checkEmailData.postData(email.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.verfiyCode , arguments: {
            "email" : email.text
          });
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Email Not Found");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }


  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}