import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/screen/home.dart';

abstract class Homescreen_controller extends GetxController {
  changePage(int currentpage);
}

class Homescreen_controllerImp extends Homescreen_controller {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Settings"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Profile"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Favorite"))],
    )
  ];
  @override
  changePage(int i) {
    currentpage=i;
    update();

  }
}
