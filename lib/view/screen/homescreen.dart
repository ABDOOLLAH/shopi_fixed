import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopi/controller/homescreen_controller.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/home/custombottonappbarhome.dart';

import '../widget/home/custombottonappbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: AppColorApp.primaryColor,
              onPressed: () {},
              child: const Icon(Icons.shopping_basket_outlined)),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const CustomBottomAppBarHome(),
          body: controller.listPage.elementAt(controller.currentpage),
        ));
  }
}