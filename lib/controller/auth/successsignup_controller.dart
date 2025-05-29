import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController{
  gotToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController{

  @override
  gotToPageLogin() {
    // TODO: implement gotToPageLogin

    Get.offAllNamed(AppRoutes.login);
  }
}