import 'package:eco/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UnsplashfiqtetllwItemWidget extends StatelessWidget {
  const UnsplashfiqtetllwItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.v,
      width: 73.h,
      margin: EdgeInsets.only(top: 1.v),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashFiq0tet6llw,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 17.adaptSize,
              width: 17.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.green700,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
