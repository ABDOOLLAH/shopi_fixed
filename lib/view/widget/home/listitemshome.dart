import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/home_controller.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/data/model/itemsmodel.dart';
import 'package:shopi/linkapi.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ItemsHome(
            itemsModel: ItemsModel.fromJson(controller.items[i]),
          );
        },
      ),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: Image.network(
            "${Applink.imagesItems}/${itemsModel.itemsImage}",
            height: 100.h,
            width: 150.w,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColorApp.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20.r),
          ),
          height: 120.h,
          width: 200.w,
        ),
        Positioned(
          left: 10.w,
          top: 10.h,
          child: Text(
            itemsModel.itemsName!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
        )
      ],
    );
  }
}
