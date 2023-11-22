import '../profile_other_screen/widgets/profileother_item_widget.dart';import 'package:eco/core/app_export.dart';import 'package:eco/presentation/articles_page/articles_page.dart';import 'package:eco/widgets/app_bar/appbar_leading_image.dart';import 'package:eco/widgets/app_bar/appbar_subtitle_four.dart';import 'package:eco/widgets/app_bar/appbar_trailing_image.dart';import 'package:eco/widgets/app_bar/custom_app_bar.dart';import 'package:eco/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ProfileOtherScreen extends StatelessWidget {ProfileOtherScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 29.h), child: Column(children: [Expanded(child: SizedBox(width: double.maxFinite, child: Padding(padding: EdgeInsets.only(left: 13.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildProfileOther(context), SizedBox(height: 2.v), Padding(padding: EdgeInsets.only(left: 52.h), child: Text("Shylla Monic", style: CustomTextStyles.labelMediumSFProTextGray80002))])))), Container(height: 259.v, width: 331.h, decoration: AppDecoration.outlineBlack, child: Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(top: 138.v), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse32, height: 28.adaptSize, width: 28.adaptSize, radius: BorderRadius.circular(14.h), margin: EdgeInsets.only(top: 58.v)), Padding(padding: EdgeInsets.only(left: 9.h, top: 76.v), child: Text("2018 . 12 . 25", style: CustomTextStyles.labelSmallSFProTextGray40002)), Spacer(), CustomImageView(imagePath: ImageConstant.imgGroup7, height: 19.v, width: 38.h, margin: EdgeInsets.only(top: 66.v, right: 24.h, bottom: 2.v))]))))])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBar(context)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 31.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup, margin: EdgeInsets.only(left: 20.h, top: 18.v, bottom: 15.v), onTap: () {onTapImage(context);}), title: AppbarSubtitleFour(text: "Shylla Monic", margin: EdgeInsets.only(left: 41.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgGroupBlack900, margin: EdgeInsets.fromLTRB(28.h, 22.v, 28.h, 20.v), onTap: () {onTapImage1(context);})]); } 
/// Section Widget
Widget _buildProfileOther(BuildContext context) { return Expanded(child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 23.v);}, itemCount: 3, itemBuilder: (context, index) {return ProfileotherItemWidget();})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.articlesPage; case BottomBarEnum.News: return "/"; case BottomBarEnum.People: return "/"; case BottomBarEnum.Me: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.articlesPage: return ArticlesPage(); default: return DefaultWidget();} } 
/// Navigates to the detailArticlesScreen when the action is triggered.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.detailArticlesScreen); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapImage1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsScreen); } 
 }
