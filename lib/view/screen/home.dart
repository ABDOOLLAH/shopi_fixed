import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/home_controller.dart';
import 'package:shopi/core/class/handlingdateview.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/linkapi.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  /* :*/
  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
        builder:
            (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Find Product",
                                hintStyle: TextStyle(fontSize: 18),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 60,
                            padding: const EdgeInsets.symmetric(vertical: 8),

                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                size: 30,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 150,

                            decoration: BoxDecoration(
                              color: AppColorApp.primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: const ListTile(
                              title: Text(
                                'A summer surprise',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                'Cashback 20%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -20,
                            right: -20,
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: AppColorApp.secoundColor,
                                borderRadius: BorderRadius.circular(160),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,

                      child: SizedBox(
                        height: 100,
                        child: ListView.separated(
                          separatorBuilder:
                              (context, index) => const SizedBox(width: 10),
                          itemCount: controller.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColorApp.thirdColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  height: 70,
                                  width: 70,
                                  child: SvgPicture.network(
                                    "${Applink.imagestCategories}/${controller.categories[index]['categories_image']}",
                                    height: 70,
                                    width: 70,
                                    color: AppColorApp.secoundColor,
                                    placeholderBuilder: (context) => CircularProgressIndicator(),
                                  )
                                ),
                                Text(
                                  "${controller.categories[index]['categories_name']}",
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: AppColorApp.black,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
