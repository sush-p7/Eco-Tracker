import 'package:eco/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  const PlaylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 2.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.fillGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashIni8gnms190,
              height: 49.adaptSize,
              width: 49.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 6.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amina Mark",
                    style: CustomTextStyles.labelLargePoppins,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      "ekamcy@gmail.com",
                      style: CustomTextStyles.bodySmallPoppinsTeal800,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                right: 10.h,
                bottom: 9.v,
              ),
              child: Column(
                children: [
                  Text(
                    "08:43",
                    style: CustomTextStyles.bodySmallPoppinsBluegray20001,
                  ),
                  SizedBox(height: 1.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 17.adaptSize,
                      margin: EdgeInsets.only(right: 3.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillTeal.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Text(
                        "3",
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
