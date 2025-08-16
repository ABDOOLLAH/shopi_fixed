import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingdatecontroller.dart';
import '../data/datesource/static/items_data.dart';

abstract class ItemsController extends GetxController {
  intialData();

  changeCat(val);

  getItems();
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedCat;

  ItemsData testData = ItemsData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    getItems();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }

  @override
  getItems() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
