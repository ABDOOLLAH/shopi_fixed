import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopi/controller/homescreen_controller.dart';

import '../widget/home/custombottonappbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Homescreen_controllerImp());
    return GetBuilder<Homescreen_controllerImp>(
      builder:
          (controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.shopping_basket_outlined),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 10,

              child: Row(
                children: [
                  Row(
                    children: [
                      CustomButtonAppBar(
                        text: 'Home',
                        colorItemSelected: Colors.black,

                        iconData: Icons.home,
                        onPressed: controller.changePage(0),
                        active: controller.currentpage==0?true:false,
                      ),
                      CustomButtonAppBar(
                        text: 'Home',
                        colorItemSelected: Colors.black,

                        iconData: Icons.home,
                        onPressed: controller.changePage(1),
                        active: controller.currentpage==1?true:false,                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonAppBar(
                        text: 'Home',
                        colorItemSelected: Colors.black,

                        iconData: Icons.home,
                        onPressed: controller.changePage(2),
                        active: controller.currentpage==2?true:false,
                      ),
                      CustomButtonAppBar(
                        text: 'Home',
                        iconData: Icons.home,
                        colorItemSelected: Colors.black,
                        onPressed: controller.changePage(3),
                        active: controller.currentpage==3?true:false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: controller.listPage.elementAt(controller.currentpage),
          ),
    );
  }
}
