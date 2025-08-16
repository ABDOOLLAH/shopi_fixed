import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopi/data/model/itemsmodel.dart';

import '../../../core/constant/color.dart';
import '../../../linkapi.dart';

class Customlistitem extends StatelessWidget {
  final ItemsModel itemsModel;

  const Customlistitem({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: Applink.imageItems + "/" + itemsModel.itemsImage!,
                height: 100,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 10),
              Text(
                itemsModel.itemsName!,
                style: TextStyle(
                  color: AppColorApp.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Rating 3.5', textAlign: TextAlign.center),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 22,
                    child: Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(Icons.star, size: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    itemsModel.itemsPrice + "\$",
                    style: TextStyle(
                      color: AppColorApp.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "sans",
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
