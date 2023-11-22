import 'package:eco/core/app_export.dart';
import 'package:eco/widgets/custom_elevated_button.dart';
import 'package:eco/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProceedtobuyItemWidget extends StatelessWidget {
  const ProceedtobuyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 125.v,
            width: 87.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Shop now".toUpperCase(),
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      bottom: 32.v,
                    ),
                    child: Text(
                      "Artsy",
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 81.adaptSize,
                  width: 81.adaptSize,
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 29.h,
                    margin: EdgeInsets.only(bottom: 9.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillBlack,
                    child: Text(
                      "-".toUpperCase(),
                      style: CustomTextStyles
                          .titleMediumWorkSansOnSecondaryContainer,
                    ),
                  ),
                ),
                CustomOutlinedButton(
                  height: 25.v,
                  width: 28.h,
                  text: "1".toUpperCase(),
                  margin: EdgeInsets.only(bottom: 9.v),
                  alignment: Alignment.bottomCenter,
                ),
                CustomElevatedButton(
                  height: 25.v,
                  width: 30.h,
                  text: "+".toUpperCase(),
                  margin: EdgeInsets.only(bottom: 9.v),
                  buttonTextStyle:
                      CustomTextStyles.titleMediumWorkSansOnSecondaryContainer,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Artsy",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  height: 84.v,
                  width: 167.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Shop now".toUpperCase(),
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 9.h),
                          child: Text(
                            "Berkely",
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 151.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Wallet with chain\n",
                                  style: CustomTextStyles.bodyMediumWorkSans_1,
                                ),
                                TextSpan(
                                  text: "Style #36252 0YK0G 1000\n",
                                  style: CustomTextStyles
                                      .bodySmallWorkSansGray60004,
                                ),
                                TextSpan(
                                  text: "\n",
                                  style: CustomTextStyles.bodyMediumWorkSans_1
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.v),
                          child: Text(
                            "564",
                            style:
                                CustomTextStyles.titleMediumWorkSansBlack90018,
                          ),
                        ),
                      ),
                    ],
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
