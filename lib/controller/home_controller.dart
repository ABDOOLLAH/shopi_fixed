import 'package:get/get.dart';
import 'package:shopi/services/services.dart';

class HomeController extends GetxController {
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  String? userEmail;

  initialData() {
    userEmail =myServices.sharedPreferences.getString("email");
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}