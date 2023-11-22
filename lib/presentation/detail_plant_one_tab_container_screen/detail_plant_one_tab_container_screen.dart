import 'package:eco/core/app_export.dart';import 'package:eco/presentation/articles_page/articles_page.dart';import 'package:eco/presentation/detail_plant_one_page/detail_plant_one_page.dart';import 'package:eco/widgets/custom_bottom_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';class DetailPlantOneTabContainerScreen extends StatefulWidget {const DetailPlantOneTabContainerScreen({Key? key}) : super(key: key);

@override DetailPlantOneTabContainerScreenState createState() =>  DetailPlantOneTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class DetailPlantOneTabContainerScreenState extends State<DetailPlantOneTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); tabviewController = TabController(length: 5, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary, body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildEightyNine(context), Padding(padding: EdgeInsets.only(left: 23.h), child: Row(children: [CustomElevatedButton(height: 23.v, width: 106.h, text: "VEGETABLES", buttonStyle: CustomButtonStyles.fillBlue, buttonTextStyle: CustomTextStyles.labelLargeSFProTextBlue500), CustomElevatedButton(height: 23.v, width: 84.h, text: "HEALTHY", margin: EdgeInsets.only(left: 10.h), buttonStyle: CustomButtonStyles.fillBlue, buttonTextStyle: CustomTextStyles.labelLargeSFProTextBlue500)])), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 36.h), child: Text("Spinach", style: theme.textTheme.headlineMedium)), SizedBox(height: 14.v), Container(height: 14.v, width: 90.h, margin: EdgeInsets.only(left: 36.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, tabs: [Tab(child: CustomImageView(imagePath: ImageConstant.imgGroup3AmberA400, height: 14.adaptSize, width: 14.adaptSize)), Tab(child: CustomImageView(imagePath: ImageConstant.imgGroup3AmberA400, height: 14.adaptSize, width: 14.adaptSize)), Tab(child: CustomImageView(imagePath: ImageConstant.imgGroup3AmberA400, height: 14.adaptSize, width: 14.adaptSize)), Tab(child: CustomImageView(imagePath: ImageConstant.imgGroup3AmberA400, height: 14.adaptSize, width: 14.adaptSize)), Tab(child: CustomImageView(imagePath: ImageConstant.imgGroup34, height: 14.adaptSize, width: 14.adaptSize))])), _buildTabBarView(context)])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBar(context)))); } 
/// Section Widget
Widget _buildEightyNine(BuildContext context) { return SizedBox(height: 306.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgRectangle62, height: 306.v, width: 414.h, alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.fromLTRB(23.h, 60.v, 23.h, 15.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 207.v), onTap: () {onTapImgArrowLeft(context);}), Spacer(), Padding(padding: EdgeInsets.only(top: 174.v), child: CustomIconButton(height: 57.adaptSize, width: 57.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgGroup3Onsecondarycontainer))), CustomImageView(imagePath: ImageConstant.imgGroup21, height: 22.v, width: 4.h, margin: EdgeInsets.only(left: 23.h, bottom: 207.v), onTap: () {onTapImgImage(context);})])))])); } 
/// Section Widget
Widget _buildTabBarView(BuildContext context) { return SizedBox(height: 398.v, child: TabBarView(controller: tabviewController, children: [DetailPlantOnePage(), DetailPlantOnePage(), DetailPlantOnePage(), DetailPlantOnePage(), DetailPlantOnePage()])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.articlesPage; case BottomBarEnum.News: return "/"; case BottomBarEnum.People: return "/"; case BottomBarEnum.Me: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.articlesPage: return ArticlesPage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapImgImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsScreen); } 
 }
