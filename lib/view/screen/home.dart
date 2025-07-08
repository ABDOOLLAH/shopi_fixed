import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/home_controller.dart';
import 'package:shopi/core/class/handlingdateview.dart';
import 'package:shopi/view/widget/home/customappbar.dart';
import 'package:shopi/view/widget/home/customcardhome.dart';
import 'package:shopi/view/widget/home/customtitlehome.dart';
import 'package:shopi/view/widget/home/listcategorieshome.dart';
import 'package:shopi/view/widget/home/listitemshome.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder:
          (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  CustomAppBar(
                    titleappbar: "Find Product",
                    onPressedIcon: () {},
                    onPressedSearch: () {},
                  ),
                  const CustomCardHome(
                    title: "A summer surprise",
                    body: "Cashback 20%",
                  ),
                  const CustomTitleHome(title: "Categories"),
                  const ListCategoriesHome(),
                  const CustomTitleHome(title: "Product for you"),
                  const ListItemsHome(),
                  const CustomTitleHome(title: "Offer"),
                  const ListItemsHome(),
                ],
              ),
            ),
          ),
    );
  }
}
