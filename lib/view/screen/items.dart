import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/items_controller.dart';
import 'package:shopi/view/widget/items/listcategoriesitems.dart';

import '../widget/customappbar.dart';

class Items extends StatelessWidget {
  const Items({super.key});


  @override
  Widget build(BuildContext context) {
   ItemsControllerImp controller= Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
            titleappbar: "Find Product",
            onPressedIcon: () {},
            onPressedSearch: () {},
          ),
          SizedBox(height: 20,),

          const ListCategoriesItems(),

        ],),
      ),
    );

  }
}
