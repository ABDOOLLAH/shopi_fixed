import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final url = "${Applink.imageItems}/${itemsModel.itemsImage}";
    Widget imageWidget;

    // إذا امتداد الملف svg استخدم SvgPicture
    if (itemsModel.itemsImage!.toLowerCase().endsWith('.svg')) {
      imageWidget = SvgPicture.network(
        url,
        height: 100.h,
        width: 150.w,
        fit: BoxFit.fill,
        placeholderBuilder: (_) => SizedBox(
          height: 100.h,
          width: 150.w,
          child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
        ),
      );
    } else {
      imageWidget = Image.network(
        url,
        height: 100.h,
        width: 150.w,
        fit: BoxFit.fill,
      );
    }

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: imageWidget,
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
        ),
      ],
    );
  }
}
