import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/auth/signup.dart';
import '../../core/class/statusrequest.dart';

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
  late StatusRequest statusRequest;
  SignupData signupData = SignupData(Get.find());


  @override
  signuoV() {
    // TODO: implement signuoV

  }
  @override
  singup() async{
    var formdate=formstate.currentState;
    if(formdate!.validate()){
      statusRequest = StatusRequest.loading;
      var response = await signupData.postData(username.text, password.text, email.text, phone.text);
      print("=============================== Controller $response ") ;
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if(response['status']=="success"){
            Get.offNamed(AppRoutes.verfiyCodesignup);
        }else{
          Get.defaultDialog(title: "Warning",middleText: "phone Number Or Email Already Exists");
          statusRequest= StatusRequest.failure;
        }
      }
      update();

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