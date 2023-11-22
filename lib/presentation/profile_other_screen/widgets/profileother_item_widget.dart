import 'package:eco/core/app_export.dart';
import 'package:eco/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileotherItemWidget extends StatelessWidget {
  const ProfileotherItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 2.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse189x89,
                      height: 89.adaptSize,
                      width: 89.adaptSize,
                      radius: BorderRadius.circular(
                        44.h,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "Wallpaers 4k",
                      style: CustomTextStyles.bodyMediumSFProDisplay_1,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 41.h,
                    top: 25.v,
                    bottom: 48.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 190.h,
                        margin: EdgeInsets.only(right: 23.h),
                        child: Row(
                          children: [
                            Text(
                              "1,132",
                              style: CustomTextStyles.titleMediumRobotoBlack900,
                            ),
                            Spacer(
                              flex: 40,
                            ),
                            Text(
                              "60K",
                              style: CustomTextStyles.titleMediumRobotoBlack900,
                            ),
                            Spacer(
                              flex: 59,
                            ),
                            Text(
                              "4",
                              style: CustomTextStyles.titleMediumRobotoBlack900,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Posts",
                              style: CustomTextStyles.bodySmallRobotoBlack900,
                            ),
                            Text(
                              "Followers",
                              style: CustomTextStyles.bodySmallRobotoBlack900,
                            ),
                            Text(
                              "Following",
                              style: CustomTextStyles.bodySmallRobotoBlack900,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "Find High Quality HD Pictures.",
              style: CustomTextStyles.bodyMediumSFProDisplay_1,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "www.wallpapers4k.com",
              style: CustomTextStyles.bodyMediumSFProDisplayCyan90001,
            ),
          ),
          SizedBox(height: 28.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  height: 25.v,
                  width: 150.h,
                  text: "+ Follow",
                  margin: EdgeInsets.only(bottom: 1.v),
                  buttonStyle: CustomButtonStyles.outlineBlackTL12,
                  buttonTextStyle: CustomTextStyles
                      .labelMediumSFProDisplayOnSecondaryContainer,
                ),
                CustomElevatedButton(
                  height: 25.v,
                  width: 150.h,
                  text: "Message",
                  margin: EdgeInsets.only(left: 31.h),
                  buttonStyle: CustomButtonStyles.fillBlackTL12,
                  buttonTextStyle: CustomTextStyles
                      .labelMediumSFProDisplayOnSecondaryContainer,
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
