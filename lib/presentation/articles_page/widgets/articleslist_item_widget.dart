import 'package:eco/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticleslistItemWidget extends StatelessWidget {
  ArticleslistItemWidget({
    Key? key,
    this.onTapImgImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259.v,
      width: 331.h,
      decoration: AppDecoration.outlineBlack,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Container(
                    width: 276.h,
                    margin: EdgeInsets.only(right: 24.h),
                    child: Text(
                      "David Austin, Who Breathed Life Into \nthe Rose, Is Dead at 92",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallSFProTextBluegray80002
                          .copyWith(
                        height: 1.21,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse31,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shivani Vora",
                              style: CustomTextStyles
                                  .labelMediumSFProTextBluegray80002,
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "2019 . 01 . 01",
                              style: CustomTextStyles
                                  .labelSmallSFProTextPrimaryContainer,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgShare2,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(
                          top: 9.v,
                          bottom: 3.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup7,
                        height: 19.v,
                        width: 38.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 9.v,
                          bottom: 2.v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle22,
            height: 145.v,
            width: 331.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(13.h),
            ),
            alignment: Alignment.topCenter,
            onTap: () {
              onTapImgImage!.call();
            },
          ),
        ],
      ),
    );
  }
}
