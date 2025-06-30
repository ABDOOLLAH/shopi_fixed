import 'package:get/get.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/functions/handlingdatecontroller.dart';
import 'package:shopi/data/datesource/static/remot/homedata.dart';
import 'package:shopi/services/services.dart';

abstract class HomeController extends GetxController {
  initialData();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  String? userEmail;
  late StatusRequest statusRequest;
  List data = [];
  List categories = [];
  HomeData homeData = HomeData(Get.find());

  initialData() {
    userEmail = myServices.sharedPreferences.getString("email");
  }

  @override
  void onInit() {
    initialData();
    getdata();
    super.onInit();
  }
  @override
  getdata()async{
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    print("=============================== Controller $response ") ;
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if(response['status']=="success"){
        categories.addAll(response['categories']);
      }else{
        statusRequest= StatusRequest.failure;
      }
    }
    update();
  }
}
