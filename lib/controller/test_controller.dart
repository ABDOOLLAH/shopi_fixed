import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/data/datesource/static/remot/test_data.dart';

import '../core/functions/handlingdatecontroller.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List date = [];
  late Statusrequest statusrequest;

  getDate() async {
    statusrequest = Statusrequest.loading;
    var response = await testData.getData();
    statusrequest = handlingDate(response);

    if (Statusrequest.success == statusrequest) {
      if (response['status'] == "success") {
        date.addAll(response['date']);
      } else {
        statusrequest = Statusrequest.failure;
      }
    }
    update();
    @override
    void onInit() {
      getDate();
      super.onInit();
    }
  }
}
