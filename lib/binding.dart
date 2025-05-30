import 'package:get/get.dart';

import 'controller/auth/login_controller.dart';
import 'controller/auth/resetpassword_controller.dart';
import 'controller/auth/singup_controller.dart';
import 'controller/auth/verifycode_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingupControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.lazyPut(() => ResetpasswordControllerImp(), fenix: true);
    Get.lazyPut(() => VerifycodeControllerImp(), fenix: true);
  }
}
