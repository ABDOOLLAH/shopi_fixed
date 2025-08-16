import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/items_controller.dart';
import 'package:shopi/core/class/handlingdateview.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/data/model/itemsmodel.dart';
import 'package:shopi/linkapi.dart';
import 'package:shopi/view/widget/items/customlistitem.dart';
import 'package:shopi/view/widget/items/listcategoriesitems.dart';

import '../widget/customappbar.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          child: GetBuilder<ItemsControllerImp>(builder: (controller) =>
              HandlingDataView(
                  statusRequest: controller.statusRequest, widget: ListView(
                  children: [
                    CustomAppBar(
                      titleappbar: "Find Product",
                      onPressedIcon: () {},
                      onPressedSearch: () {},
                    ),
                    SizedBox(height: 20),

                    const ListCategoriesItems(),
                    GridView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (BuildContext context, index) {
                          return Customlistitem(itemsModel:ItemsModel.fromJson(controller.data[index]));
                        }),
                  ])))
      ),
    );
  }
}
