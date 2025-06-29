import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/auth/login.dart';
import 'package:shopi/services/services.dart';

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
  MyServices myServices=Get.find();
  StatusRequest statusRequest=StatusRequest.none;
  LoginData loginData = LoginData(Get.find());

  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;

    update();
  }

  @override
  login() async{
    var formdate = formstate.currentState;
    if(formdate!.validate()){
      myServices.sharedPreferences.setString("password",  password.text);
      myServices.sharedPreferences.setString("email", email.text);
      print("email$email.text" ) ;
      print("password$password.text" ) ;

      myServices.sharedPreferences.setString("step", "2");
      Get.offNamed(AppRoutes.home);
      /*   statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text , password.text);
      print("=============================== Controller $response ") ;
      statusRequest = handlingData(response);

     if (StatusRequest.success == statusRequest) {
        if(response['status']=="success"){
          myServices.sharedPreferences.setString("id", response['data']['user_id']);
          myServices.sharedPreferences.setString("username", response['data']['user_user_name']);
          myServices.sharedPreferences.setString("email", response['data']['user_email']);
          myServices.sharedPreferences.setString("phone", response['data']['user_phone']);
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoutes.home);
        }else{
          Get.defaultDialog(title: "Warning",middleText: "Email or password not corretto");
          statusRequest= StatusRequest.failure;
        }
      }*/
      update();

    } else {}
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
