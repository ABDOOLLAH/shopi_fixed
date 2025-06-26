import 'package:get/get.dart';

import 'controller/auth/login_controller.dart';
import 'controller/frogetpassword/resetpassword_controller.dart';
import 'controller/auth/singup_controller.dart';
import 'controller/frogetpassword/verifycode_controller.dart';
import 'core/class/crud.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SingupControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.lazyPut(() => ResetpasswordControllerImp(), fenix: true);
    Get.lazyPut(() => VerifycodeControllerImp(), fenix: true);
  }
}
