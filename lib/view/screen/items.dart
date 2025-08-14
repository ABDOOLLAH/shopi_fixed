import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/items_controller.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/linkapi.dart';
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
        child: ListView(
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
                crossAxisCount: 2,childAspectRatio: 0.7,
              ),
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl: Applink.imageItems + "/laptop.png",
                          ),
                          Text("Laptop Surface Go",style: TextStyle(color: AppColorApp.black,fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("description hoe are you",textAlign: TextAlign.center,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("200.10\$",style: TextStyle(color: AppColorApp.primaryColor,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "sans")),
                              IconButton(onPressed: (){}, icon:Icon (Icons.favorite_border_outlined))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
