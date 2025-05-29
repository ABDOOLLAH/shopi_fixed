import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController{
  gotToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{

  @override
  gotToPageLogin() {
    // TODO: implement gotToPageLogin

    Get.offAllNamed(AppRoutes.login);
  }
}