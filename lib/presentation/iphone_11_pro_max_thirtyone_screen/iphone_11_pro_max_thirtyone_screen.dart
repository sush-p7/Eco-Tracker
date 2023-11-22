import 'package:eco/core/app_export.dart';import 'package:eco/widgets/app_bar/appbar_leading_image.dart';import 'package:eco/widgets/app_bar/appbar_subtitle_two.dart';import 'package:eco/widgets/app_bar/custom_app_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class Iphone11ProMaxThirtyoneScreen extends StatelessWidget {Iphone11ProMaxThirtyoneScreen({Key? key}) : super(key: key);

String radioGroup = "";

String radioGroup1 = "";

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 27.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Payment", style: theme.textTheme.displaySmall)), SizedBox(height: 45.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Payment method", style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold)), SizedBox(height: 18.v), Container(width: 315.h, margin: EdgeInsets.only(right: 7.h), padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v), decoration: AppDecoration.outlineBlack9002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildCardRadio(context), SizedBox(height: 15.v), Opacity(opacity: 0.3, child: Align(alignment: Alignment.centerRight, child: Divider(color: appTheme.black900.withOpacity(0.46), indent: 30.h, endIndent: 11.h))), SizedBox(height: 14.v), _buildBankAccountRadio(context), SizedBox(height: 55.v)])), Spacer(), SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 5.v), child: Text("Total", style: theme.textTheme.bodyLarge)), Text("23,000", style: CustomTextStyles.titleLargeSFProText)]))])), bottomNavigationBar: _buildProceedToPaymentButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 65.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlack900, margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Checkout")); } 
/// Section Widget
Widget _buildCardRadio(BuildContext context) { return CustomRadioButton(text: "Card", value: "Card", groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 9.v), onChange: (value) {radioGroup = value;}); } 
/// Section Widget
Widget _buildBankAccountRadio(BuildContext context) { return CustomRadioButton(text: "Bank account", value: "Bank account", groupValue: radioGroup1, padding: EdgeInsets.symmetric(vertical: 9.v), onChange: (value) {radioGroup1 = value;}); } 
/// Section Widget
Widget _buildProceedToPaymentButton(BuildContext context) { return CustomElevatedButton(height: 70.v, text: "Proceed to payment", margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v), buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: CustomTextStyles.titleMediumSFProTextGray100); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
