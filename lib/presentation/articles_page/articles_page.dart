import '../articles_page/widgets/articleslist_item_widget.dart';import 'package:eco/core/app_export.dart';import 'package:eco/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ArticlesPage extends StatelessWidget {ArticlesPage({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary, resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, decoration: AppDecoration.outlineOnSecondaryContainer, child: Column(children: [_buildArrowLeft(context), SizedBox(height: 9.v), _buildArticlesList(context)])))); } 
/// Section Widget
Widget _buildArrowLeft(BuildContext context) { return SizedBox(height: 226.v, width: double.maxFinite, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 61.v), decoration: AppDecoration.fillTealA, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgArrowLeft(context);}), SizedBox(height: 18.v), Text("Articles", style: CustomTextStyles.headlineLargeSFProTextOnSecondaryContainer), SizedBox(height: 14.v)]))), CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.v, width: 182.h, alignment: Alignment.topRight), CustomImageView(imagePath: ImageConstant.imgEllipse147x71, height: 147.v, width: 71.h, alignment: Alignment.bottomRight), CustomImageView(imagePath: ImageConstant.imgGroup21, height: 22.v, width: 4.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 62.v, right: 29.h)), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(bottom: 7.v), child: Text("Articles", style: CustomTextStyles.sFProTextOnSecondaryContainer))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 22.h, bottom: 20.v), child: CustomSearchView(width: 331.h, controller: searchController, hintText: "Search For Articles", alignment: Alignment.bottomLeft, contentPadding: EdgeInsets.only(top: 16.v, right: 30.h, bottom: 16.v), borderDecoration: SearchViewStyleHelper.outlineGray)))])); } 
/// Section Widget
Widget _buildArticlesList(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 41.h), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 25.v);}, itemCount: 2, itemBuilder: (context, index) {return ArticleslistItemWidget(onTapImgImage: () {onTapImgImage(context);});}))); } 
/// Navigates to the detailArticlesScreen when the action is triggered.
onTapImgImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.detailArticlesScreen); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
