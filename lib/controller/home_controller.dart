import 'package:shopi/core/class/statusrequest.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/homedata.dart';
import 'package:shopi/services/services.dart';

abstract class HomeController extends GetxController {
  initialData();

  getdata();

  goToItems(List categories, selectedCat);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  List items = [];

  // List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  goToItems(categories, selectedCat) {
    Get.toNamed(
      AppRoutes.items,
      arguments: {"categories": categories, "selectedCat": selectedCat},
    );
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories'] ?? []);
        items.addAll(response['items'] ?? []);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
