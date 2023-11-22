import 'package:eco/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AminamarkItemWidget extends StatelessWidget {
  const AminamarkItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 2.v,
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
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 6.v,
              bottom: 10.v,
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
          Padding(
            padding: EdgeInsets.only(
              left: 165.h,
              top: 6.v,
              bottom: 10.v,
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
    );
  }
}
