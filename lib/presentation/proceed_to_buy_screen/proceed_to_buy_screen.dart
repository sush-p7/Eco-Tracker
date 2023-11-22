import '../proceed_to_buy_screen/widgets/proceedtobuy1_item_widget.dart';import '../proceed_to_buy_screen/widgets/proceedtobuy_item_widget.dart';import 'package:eco/core/app_export.dart';import 'package:eco/presentation/articles_page/articles_page.dart';import 'package:eco/widgets/custom_bottom_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_icon_button.dart';import 'package:eco/widgets/custom_outlined_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// ignore_for_file: must_be_immutable
class ProceedToBuyScreen extends StatelessWidget {ProceedToBuyScreen({Key? key}) : super(key: key);

TextEditingController searchSectionController = TextEditingController();

TextEditingController artsyShopnowSectionController = TextEditingController();

TextEditingController berkelyShopnowSectionController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 7.v), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 33.v), Expanded(child: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapSixtyFour(context);}, child: Container(margin: EdgeInsets.symmetric(horizontal: 50.h), padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 17.v), decoration: AppDecoration.outlineBlack9002.copyWith(borderRadius: BorderRadiusStyle.circleBorder30), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgSearch, height: 24.adaptSize, width: 24.adaptSize), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 6.h, top: 3.v), child: Text("Type here to search", style: CustomTextStyles.bodyLargeSFProDisplayBlack900))), Spacer(), CustomImageView(imagePath: ImageConstant.imgVector, height: 16.v, width: 21.h, margin: EdgeInsets.only(top: 6.v, bottom: 2.v)), Container(height: 23.v, width: 30.h, margin: EdgeInsets.only(left: 11.h), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgVectorBlack900, height: 15.v, width: 19.h, alignment: Alignment.bottomLeft), Align(alignment: Alignment.topRight, child: Container(padding: EdgeInsets.symmetric(horizontal: 3.h), decoration: AppDecoration.outlineOnSecondaryContainer3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), _buildSearchSection(context)])))]))])))), SizedBox(height: 50.v), _buildFiftyThreeStackSection(context), SizedBox(height: 12.v), Align(alignment: Alignment.center, child: SizedBox(height: 547.v, width: 371.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 18.v), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildThisSeasonsLatestSection(context), SizedBox(height: 30.v), _buildSeventyOneRowSection(context)]))), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapCart(context);}, child: Container(margin: EdgeInsets.only(left: 9.h, right: 6.h), padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v), decoration: AppDecoration.fillOnSecondaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(width: 125.h, child: Divider(color: appTheme.gray80001)), SizedBox(height: 67.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildProceedToBuy(context), SizedBox(width: 98.h, child: Divider(indent: 10.h)), Align(alignment: Alignment.centerRight, child: SizedBox(width: 114.h, child: Divider(endIndent: 26.h))), SizedBox(height: 52.v), CustomImageView(imagePath: ImageConstant.imgImage1, height: 111.adaptSize, width: 111.adaptSize), SizedBox(height: 79.v), CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 13.v, width: 17.h, alignment: Alignment.centerRight)])), SizedBox(height: 10.v), _buildProceedToBuyButtonSection(context), SizedBox(height: 10.v)]))))]))), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 11.h), child: Text("Shop by categories", style: theme.textTheme.headlineSmall)), SizedBox(height: 24.v), _buildProceedToBuy1(context), SizedBox(height: 36.v), _buildBrowseAllCategoriesButtonSection(context)])))])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBarSection(context)))); } 
/// Section Widget
Widget _buildSearchSection(BuildContext context) { return CustomTextFormField(width: 7.h, controller: searchSectionController, hintText: "3"); } 
/// Section Widget
Widget _buildFiftyThreeStackSection(BuildContext context) { return Container(height: 195.v, width: 762.h, padding: EdgeInsets.symmetric(horizontal: 27.h), decoration: AppDecoration.outlineBlack, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.centerRight, child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 354.h, right: 3.h), child: IntrinsicWidth(child: SizedBox(height: 195.v, width: 351.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle121, height: 195.v, width: 351.h, radius: BorderRadius.circular(32.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: SizedBox(width: double.maxFinite, child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle121195x351, height: 195.v, width: 351.h, radius: BorderRadius.circular(32.h)), Expanded(child: Padding(padding: EdgeInsets.only(left: 280.h, top: 53.v, bottom: 14.v), child: Column(children: [Container(height: 26.v, width: 58.h, decoration: BoxDecoration(color: appTheme.gray5001)), SizedBox(height: 69.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 4.h), child: CustomIconButton(height: 31.adaptSize, width: 31.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlack, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftOnsecondarycontainer)))), Expanded(child: Padding(padding: EdgeInsets.only(left: 4.h), child: CustomIconButton(height: 31.adaptSize, width: 31.adaptSize, padding: EdgeInsets.all(5.h), decoration: IconButtonStyleHelper.fillBlack, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftOnsecondarycontainer31x31))))])])))])))]))))), Align(alignment: Alignment.topRight, child: Container(height: 31.v, width: 96.h, margin: EdgeInsets.only(top: 79.v), decoration: BoxDecoration(color: appTheme.gray5001))), Align(alignment: Alignment.bottomRight, child: Container(height: 27.v, width: 70.h, margin: EdgeInsets.only(right: 26.h, bottom: 59.v), decoration: BoxDecoration(color: appTheme.gray5001))), Align(alignment: Alignment.topRight, child: Container(width: 84.h, margin: EdgeInsets.only(top: 50.v, right: 4.h), child: Text("This season’s latest", maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleLargePlayfairDisplay.copyWith(height: 1.26))))])); } 
/// Section Widget
Widget _buildThisSeasonsLatestSection(BuildContext context) { return Container(decoration: AppDecoration.outlineBlack, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.fillOnSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildArrowDown(context), SizedBox(height: 13.v), Text("Artsy", style: CustomTextStyles.titleMediumBlack900), SizedBox(height: 15.v), Text("Shop now".toUpperCase(), style: theme.textTheme.titleSmall), SizedBox(height: 3.v), SizedBox(width: 88.h, child: Divider()), SizedBox(height: 12.v)])), Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v), decoration: AppDecoration.fillOnSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildArrowDown1(context), SizedBox(height: 12.v), Text("Berkely", style: CustomTextStyles.titleMediumBlack900), SizedBox(height: 14.v), Text("Shop now".toUpperCase(), style: theme.textTheme.titleSmall), SizedBox(height: 3.v), SizedBox(width: 88.h, child: Divider()), SizedBox(height: 6.v)]))])); } 
/// Section Widget
Widget _buildArtsyShopnowSection(BuildContext context) { return CustomTextFormField(width: 88.h, controller: artsyShopnowSectionController, hintText: "Shop now".toUpperCase(), contentPadding: EdgeInsets.symmetric(horizontal: 5.h)); } 
/// Section Widget
Widget _buildBerkelyShopnowSection(BuildContext context) { return CustomTextFormField(width: 88.h, controller: berkelyShopnowSectionController, hintText: "Shop now".toUpperCase(), textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 5.h)); } 
/// Section Widget
Widget _buildSeventyOneRowSection(BuildContext context) { return Container(decoration: AppDecoration.outlineBlack, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.fillOnSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildArrowDown(context), SizedBox(height: 13.v), Text("Artsy", style: CustomTextStyles.titleMediumBlack900), SizedBox(height: 15.v), _buildArtsyShopnowSection(context), SizedBox(height: 12.v)])), Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v), decoration: AppDecoration.fillOnSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildArrowDown1(context), SizedBox(height: 12.v), Text("Berkely", style: CustomTextStyles.titleMediumBlack900), SizedBox(height: 14.v), _buildBerkelyShopnowSection(context), SizedBox(height: 6.v)]))])); } 
/// Section Widget
Widget _buildProceedToBuy(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 18.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 5.5.v), child: SizedBox(width: 290.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.black900)));}, itemCount: 2, itemBuilder: (context, index) {return ProceedtobuyItemWidget();})); } 
/// Section Widget
Widget _buildProceedToBuyButtonSection(BuildContext context) { return CustomElevatedButton(height: 43.v, width: 187.h, text: "Proceed to buy".toUpperCase(), buttonStyle: CustomButtonStyles.fillBlackTL21, buttonTextStyle: CustomTextStyles.titleMediumWorkSansOnSecondaryContainerMedium); } 
/// Section Widget
Widget _buildProceedToBuy1(BuildContext context) { return StaggeredGridView.countBuilder(shrinkWrap: true, primary: false, crossAxisCount: 4, crossAxisSpacing: 31.h, mainAxisSpacing: 31.h, staggeredTileBuilder: (index) {return StaggeredTile.fit(2);}, itemCount: 4, itemBuilder: (context, index) {return Proceedtobuy1ItemWidget();}); } 
/// Section Widget
Widget _buildBrowseAllCategoriesButtonSection(BuildContext context) { return CustomOutlinedButton(width: 240.h, text: "Browse all categories".toUpperCase(), margin: EdgeInsets.only(left: 68.h)); } 
/// Section Widget
Widget _buildBottomBarSection(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
/// Common widget
Widget _buildArrowDown(BuildContext context) { return SizedBox(height: 111.v, width: 126.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 13.v, width: 17.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 18.v)), CustomImageView(imagePath: ImageConstant.imgImage1, height: 111.adaptSize, width: 111.adaptSize, alignment: Alignment.centerLeft)])); } 
/// Common widget
Widget _buildArrowDown1(BuildContext context) { return SizedBox(height: 111.v, width: 125.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 13.v, width: 17.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 14.v)), CustomImageView(imagePath: ImageConstant.imgImage1111x111, height: 111.adaptSize, width: 111.adaptSize, alignment: Alignment.centerLeft)])); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.articlesPage; case BottomBarEnum.News: return "/"; case BottomBarEnum.People: return "/"; case BottomBarEnum.Me: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.articlesPage: return ArticlesPage(); default: return DefaultWidget();} } 
/// Navigates to the searchScreen when the action is triggered.
onTapSixtyFour(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchScreen); } 
/// Navigates to the homeOneScreen when the action is triggered.
onTapCart(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeOneScreen); } 
 }