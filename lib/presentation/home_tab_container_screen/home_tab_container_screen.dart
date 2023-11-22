import 'package:eco/core/app_export.dart';import 'package:eco/presentation/articles_page/articles_page.dart';import 'package:eco/presentation/home_page/home_page.dart';import 'package:eco/presentation/home_three_page/home_three_page.dart';import 'package:eco/presentation/home_two_page/home_two_page.dart';import 'package:eco/widgets/custom_bottom_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class HomeTabContainerScreen extends StatefulWidget {const HomeTabContainerScreen({Key? key}) : super(key: key);

@override HomeTabContainerScreenState createState() =>  HomeTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class HomeTabContainerScreenState extends State<HomeTabContainerScreen> with  TickerProviderStateMixin {TextEditingController group135Controller = TextEditingController();

TextEditingController addtocartController = TextEditingController();

late TabController tabviewController;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 41.v), GestureDetector(onTap: () {onTapSix(context);}, child: Container(margin: EdgeInsets.symmetric(horizontal: 50.h), padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 17.v), decoration: AppDecoration.outlineBlack9002.copyWith(borderRadius: BorderRadiusStyle.circleBorder30), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgSearch, height: 24.adaptSize, width: 24.adaptSize), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 6.h, top: 3.v), child: Text("Type here to search", style: CustomTextStyles.bodyLargeSFProDisplayBlack900))), Spacer(), CustomImageView(imagePath: ImageConstant.imgVector, height: 16.v, width: 21.h, margin: EdgeInsets.only(top: 6.v, bottom: 3.v)), Container(height: 23.v, width: 30.h, margin: EdgeInsets.only(left: 11.h), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgVectorBlack900, height: 15.v, width: 19.h, alignment: Alignment.bottomLeft), Align(alignment: Alignment.topRight, child: Container(padding: EdgeInsets.symmetric(horizontal: 3.h), decoration: AppDecoration.outlineOnSecondaryContainer3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomTextFormField(width: 7.h, controller: group135Controller, hintText: "3")])))]))]))), SizedBox(height: 43.v), _buildBuyNow(context), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(right: 76.h), child: CustomTextFormField(width: 94.h, controller: addtocartController, hintText: "Add to cart".toUpperCase(), hintStyle: CustomTextStyles.titleSmallSFProDisplay_1, textInputAction: TextInputAction.done, alignment: Alignment.centerRight, contentPadding: EdgeInsets.symmetric(horizontal: 3.h))), SizedBox(height: 47.v), Container(height: 29.v, width: 326.h, margin: EdgeInsets.only(left: 33.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.black900, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.black900, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700), indicatorColor: appTheme.black900, tabs: [Tab(child: Text("Description")), Tab(child: Text("Shipping info")), Tab(child: Text("Payment options"))])), _buildTabBarView(context)])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBar(context)))); } 
/// Section Widget
Widget _buildBuyNow(BuildContext context) { return SizedBox(height: 156.v, width: 349.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(top: 1.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgImage1, height: 155.v, width: 170.h), Padding(padding: EdgeInsets.only(top: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 118.h, margin: EdgeInsets.only(right: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Artsy", style: CustomTextStyles.titleLargePlayfairDisplay), CustomImageView(imagePath: ImageConstant.imgVectorBlack90014x17, height: 14.v, width: 17.h, margin: EdgeInsets.only(top: 6.v, bottom: 9.v))])), SizedBox(height: 1.v), SizedBox(width: 139.h, child: RichText(text: TextSpan(children: [TextSpan(text: "Wallet with chain\n", style: CustomTextStyles.bodyMediumSFProDisplay), TextSpan(text: "Style #36252 0YK0G 1000\n", style: CustomTextStyles.bodySmallGray60004), TextSpan(text: "\n", style: CustomTextStyles.bodyMediumSFProDisplay.copyWith(height: 1.50))]), textAlign: TextAlign.left)), SizedBox(height: 4.v), Text("564", style: CustomTextStyles.titleLargeBold), SizedBox(height: 15.v), CustomElevatedButton(height: 31.v, width: 97.h, text: "Buy now".toUpperCase(), buttonStyle: CustomButtonStyles.fillBlackTL15, buttonTextStyle: CustomTextStyles.titleSmallSFProDisplayGray5001, onPressed: () {onTapBuyNow(context);})]))]))), CustomImageView(imagePath: ImageConstant.imgImage1, height: 155.v, width: 170.h, alignment: Alignment.centerLeft)])); } 
/// Section Widget
Widget _buildTabBarView(BuildContext context) { return Expanded(child: SizedBox(height: 402.v, child: TabBarView(controller: tabviewController, children: [HomePage(), HomeThreePage(), HomeTwoPage()]))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.articlesPage; case BottomBarEnum.News: return "/"; case BottomBarEnum.People: return "/"; case BottomBarEnum.Me: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.articlesPage: return ArticlesPage(); default: return DefaultWidget();} } 
/// Navigates to the searchScreen when the action is triggered.
onTapSix(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchScreen); } 
/// Navigates to the proceedToBuyScreen when the action is triggered.
onTapBuyNow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.proceedToBuyScreen); } 
 }