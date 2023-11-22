import 'package:eco/core/app_export.dart';import 'package:eco/presentation/articles_page/articles_page.dart';import 'package:eco/widgets/custom_bottom_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class DetailArticlesScreen extends StatelessWidget {DetailArticlesScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary, body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildStackSection(context), Padding(padding: EdgeInsets.only(left: 23.h), child: Row(children: [CustomElevatedButton(height: 23.v, width: 106.h, text: "VEGETABLES", buttonStyle: CustomButtonStyles.fillTealA, buttonTextStyle: CustomTextStyles.labelLargeSFProTextTealA400), CustomElevatedButton(height: 23.v, width: 77.h, text: "GARDEN", margin: EdgeInsets.only(left: 10.h), buttonStyle: CustomButtonStyles.fillTealA, buttonTextStyle: CustomTextStyles.labelLargeSFProTextTealA400)])), SizedBox(height: 19.v), Container(width: 326.h, margin: EdgeInsets.only(left: 36.h, right: 52.h), child: Text("Even on Urban Excursions, \nFinding Mother Nature's Charms", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleLargeSFProTextBluegray80002.copyWith(height: 1.21))), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 36.h, right: 52.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse3, height: 37.adaptSize, width: 37.adaptSize, radius: BorderRadius.circular(18.h)), Padding(padding: EdgeInsets.only(left: 10.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Shylla Monic", style: CustomTextStyles.titleSmallSFProTextGray80002), SizedBox(height: 3.v), Text("2019 . 01 . 01", style: CustomTextStyles.labelLargeSFProTextPrimaryContainer)])), Spacer(), CustomElevatedButton(height: 30.v, width: 73.h, text: "Follow", margin: EdgeInsets.only(top: 4.v, bottom: 3.v), leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 7.adaptSize, width: 7.adaptSize)), buttonStyle: CustomButtonStyles.fillPrimaryTL15, buttonTextStyle: CustomTextStyles.labelMediumSFProTextOnSecondaryContainerSemiBold)])), SizedBox(height: 25.v), Align(alignment: Alignment.center, child: Container(width: 338.h, margin: EdgeInsets.only(left: 36.h, right: 40.h), child: Text("Public parks aside, getting a dose of nature can \nbe a tricky task during an urban escape. But nat\nure should and can fit into that city getaway, acc\nording to Kally Ellis, the founder of the London fl\norist company McQueens and the in-house florist \nfor the Maybourne Hotel Group. “Connecting with \nthe natural world wherever you are is a great antid\note to jet lag and travel tiredness,” she said. “Plan\nts and flowers can refresh us, boost our energy \nand help us recalibrate.”", maxLines: 13, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumSFProTextGray60003))), SizedBox(height: 5.v)])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBarSection(context)))); } 
/// Section Widget
Widget _buildStackSection(BuildContext context) { return SizedBox(height: 306.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgRectangle306x414, height: 306.v, width: 414.h, alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.fromLTRB(22.h, 60.v, 22.h, 20.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 202.v), onTap: () {onTapImgArrowLeft(context);}), Spacer(), Padding(padding: EdgeInsets.only(top: 169.v), child: CustomIconButton(height: 57.adaptSize, width: 57.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgGroup3Onsecondarycontainer))), CustomImageView(imagePath: ImageConstant.imgGroup21, height: 22.v, width: 4.h, margin: EdgeInsets.only(left: 24.h, bottom: 202.v))])))])); } 
/// Section Widget
Widget _buildBottomBarSection(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.articlesPage; case BottomBarEnum.News: return "/"; case BottomBarEnum.People: return "/"; case BottomBarEnum.Me: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.articlesPage: return ArticlesPage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
