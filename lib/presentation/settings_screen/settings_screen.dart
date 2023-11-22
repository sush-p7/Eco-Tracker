import 'package:eco/core/app_export.dart';
import 'package:eco/presentation/articles_page/articles_page.dart';
import 'package:eco/widgets/app_bar/appbar_leading_image.dart';
import 'package:eco/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:eco/widgets/app_bar/custom_app_bar.dart';
import 'package:eco/widgets/custom_bottom_bar.dart';
import 'package:eco/widgets/custom_checkbox_button.dart';
import 'package:eco/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  bool privacy = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 36.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Type here to search",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFollow,
                      height: 15.v,
                      width: 19.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Follow and invite friends",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgNotificationsNone,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "Notifications",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    Container(
                      height: 15.v,
                      width: 19.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(right: 2.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                                border: Border.all(
                                  color: appTheme.black900,
                                  width: 2.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse25,
                            height: 5.v,
                            width: 13.h,
                            alignment: Alignment.bottomRight,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgStar3,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            radius: BorderRadius.circular(
                              1.h,
                            ),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 3.v),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "Creator",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              _buildPrivacy(context),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMagneticCard,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Payments",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMicrosoftAdmin,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 4.v,
                      ),
                      child: Text(
                        "Security",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFlag,
                    height: 31.v,
                    width: 37.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 7.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "Ads",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAccount,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "Accounts",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 1.v),
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text(
                            "?",
                            style: CustomTextStyles.labelLargeInter,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "Help",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  children: [
                    Container(
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      padding: EdgeInsets.all(1.h),
                      decoration: AppDecoration.outlineBlack9005.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgInformation,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "About",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPaintPalette,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Theme",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                width: 103.h,
                margin: EdgeInsets.only(left: 7.h),
                child: Text(
                  "Eco\nTracker",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineLargeSFProRoundedPrimary,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "Account Center",
                  style: CustomTextStyles.bodyMediumTealA400,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 41.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 15.v,
          bottom: 18.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "Settings",
        margin: EdgeInsets.only(left: 26.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivacy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: CustomCheckboxButton(
        text: "Privacy",
        value: privacy,
        onChange: (value) {
          privacy = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.articlesPage;
      case BottomBarEnum.News:
        return "/";
      case BottomBarEnum.People:
        return "/";
      case BottomBarEnum.Me:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.articlesPage:
        return ArticlesPage();
      default:
        return DefaultWidget();
    }
  }
}
