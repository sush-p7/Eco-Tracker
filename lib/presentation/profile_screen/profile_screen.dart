import 'package:eco/core/app_export.dart';import 'package:eco/presentation/articles_page/articles_page.dart';import 'package:eco/widgets/app_bar/appbar_leading_image.dart';import 'package:eco/widgets/app_bar/appbar_subtitle.dart';import 'package:eco/widgets/app_bar/appbar_trailing_image.dart';import 'package:eco/widgets/app_bar/custom_app_bar.dart';import 'package:eco/widgets/custom_bottom_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {ProfileScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 29.h), child: Column(children: [_buildUserProfile(context), SizedBox(height: 28.v), Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(height: 25.v, width: 145.h, text: "Edit Profile", buttonStyle: CustomButtonStyles.outlineBlackTL12, buttonTextStyle: CustomTextStyles.labelMediumSFProDisplayOnSecondaryContainer), CustomElevatedButton(height: 25.v, width: 145.h, text: "Share Profile", margin: EdgeInsets.only(left: 7.h), buttonStyle: CustomButtonStyles.fillBlackTL12, buttonTextStyle: CustomTextStyles.labelMediumSFProDisplayOnSecondaryContainer), Container(height: 25.v, width: 27.h, margin: EdgeInsets.only(left: 7.h), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.circleBorder14), child: CustomImageView(imagePath: ImageConstant.imgGroup189, height: 14.v, width: 18.h, alignment: Alignment.center))])), SizedBox(height: 34.v), Container(height: 259.v, width: 331.h, decoration: AppDecoration.outlineBlack, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Container(width: 276.h, margin: EdgeInsets.only(right: 24.h), child: Text("David Austin, Who Breathed Life Into \nthe Rose, Is Dead at 92", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallSFProTextBluegray80002.copyWith(height: 1.21))), SizedBox(height: 13.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse3128x28, height: 28.adaptSize, width: 28.adaptSize, radius: BorderRadius.circular(14.h)), Padding(padding: EdgeInsets.only(left: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Shylla Monic", style: CustomTextStyles.labelMediumSFProTextGray80002), SizedBox(height: 4.v), Text("2019 . 01 . 01", style: CustomTextStyles.labelSmallSFProTextPrimaryContainer)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgGroup7, height: 19.v, width: 38.h, margin: EdgeInsets.only(top: 8.v, bottom: 2.v))])]))), CustomImageView(imagePath: ImageConstant.imgRectangle22, height: 145.v, width: 331.h, radius: BorderRadius.vertical(top: Radius.circular(13.h)), alignment: Alignment.topCenter)])), SizedBox(height: 25.v), Container(height: 259.v, width: 331.h, decoration: AppDecoration.outlineBlack, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Container(width: 259.h, margin: EdgeInsets.only(right: 41.h), child: Text("Even on Urban Excursions, Finding \nMother Nature's Charms", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallSFProTextBluegray80002.copyWith(height: 1.21))), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse32, height: 28.adaptSize, width: 28.adaptSize, radius: BorderRadius.circular(14.h)), Padding(padding: EdgeInsets.only(left: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Shylla Monic", style: CustomTextStyles.labelMediumSFProTextGray80002), SizedBox(height: 4.v), Text("2018 . 12 . 25", style: CustomTextStyles.labelSmallSFProTextGray40002)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgGroup7, height: 19.v, width: 38.h, margin: EdgeInsets.only(top: 8.v, bottom: 2.v))]))]))), CustomImageView(imagePath: ImageConstant.imgRectangle218, height: 145.v, width: 331.h, radius: BorderRadius.vertical(top: Radius.circular(13.h)), alignment: Alignment.topCenter, onTap: () {onTapImgImage(context);})]))])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBar(context)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 41.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup, margin: EdgeInsets.only(left: 30.h, top: 13.v, bottom: 20.v)), title: AppbarSubtitle(text: "Lucy", margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgGroupBlack900, margin: EdgeInsets.fromLTRB(28.h, 16.v, 28.h, 26.v), onTap: () {onTapImage(context);})]); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 147.v, width: 187.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(top: 26.v, right: 14.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("1,132", style: CustomTextStyles.titleMediumRobotoBlack900), SizedBox(height: 1.v), Text("Posts", style: CustomTextStyles.bodySmallRobotoBlack900)]))), Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse1, height: 89.adaptSize, width: 89.adaptSize, radius: BorderRadius.circular(44.h)), SizedBox(height: 5.v), Text("Wallpaers 4k", style: CustomTextStyles.bodyMediumRoboto), SizedBox(height: 1.v), Text("Find High Quality HD Pictures.", style: CustomTextStyles.bodyMediumRoboto), GestureDetector(onTap: () {onTapTxtWeburl(context);}, child: Text("www.wallpapers4k.com", style: CustomTextStyles.bodyMediumRobotoCyan90001))]))])), Padding(padding: EdgeInsets.only(left: 19.h, top: 24.v, bottom: 85.v), child: _buildFive(context, userName: "60K", followingCount: "Followers")), Spacer(), Padding(padding: EdgeInsets.only(top: 24.v, bottom: 84.v), child: _buildFive(context, userName: "4", followingCount: "Following"))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
/// Common widget
Widget _buildFive(BuildContext context, {required String userName, required String followingCount, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 19.h), child: Text(userName, style: CustomTextStyles.titleMediumRobotoBlack900.copyWith(color: appTheme.black900))), SizedBox(height: 3.v), Text(followingCount, style: CustomTextStyles.bodySmallRobotoBlack900.copyWith(color: appTheme.black900))]); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.articlesPage; case BottomBarEnum.News: return "/"; case BottomBarEnum.People: return "/"; case BottomBarEnum.Me: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.articlesPage: return ArticlesPage(); default: return DefaultWidget();} } 
/// Navigates to the settingsScreen when the action is triggered.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsScreen); } 

onTapTxtWeburl(BuildContext context) { // TODO: implement Actions
 } 
/// Navigates to the detailArticlesScreen when the action is triggered.
onTapImgImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.detailArticlesScreen); } 
 }
