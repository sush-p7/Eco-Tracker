import 'package:eco/core/app_export.dart';import 'package:eco/widgets/app_bar/appbar_leading_image.dart';import 'package:eco/widgets/app_bar/appbar_subtitle_two.dart';import 'package:eco/widgets/app_bar/custom_app_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_radio_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class Iphone11ProMaxTwentysevenScreen extends StatelessWidget {Iphone11ProMaxTwentysevenScreen({Key? key}) : super(key: key);

TextEditingController marvisKparoboController = TextEditingController();

String deliveryMethodRadioGroup = "";

List<String> radioList = ["lbl_door_delivery", "lbl_pick_up"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 26.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Delivery", style: theme.textTheme.displaySmall))), SizedBox(height: 41.v), Padding(padding: EdgeInsets.only(left: 7.h, right: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Address details", style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold), Text("change", style: CustomTextStyles.bodyMediumSFProTextPrimary)])), SizedBox(height: 19.v), Container(width: 315.h, margin: EdgeInsets.only(left: 4.h, right: 3.h), padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v), decoration: AppDecoration.outlineBlack9002.copyWith(borderRadius: BorderRadiusStyle.circleBorder30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 23.h), child: CustomTextFormField(controller: marvisKparoboController, hintText: "Marvis Kparobo", hintStyle: CustomTextStyles.titleMediumSFProTextBlack900Medium, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.underLineBlack1, filled: false)), SizedBox(height: 6.v), Container(width: 223.h, margin: EdgeInsets.only(right: 32.h), child: Text("Km 5 refinery road oppsite re\npublic road, effurun, delta state", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumSFProText)), SizedBox(height: 5.v), Opacity(opacity: 0.3, child: Divider(color: appTheme.black900.withOpacity(0.46), endIndent: 23.h)), SizedBox(height: 7.v), Text("+234 9011039271", style: CustomTextStyles.bodyMediumSFProText)])), SizedBox(height: 42.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 10.h), child: Text("Delivery method.", style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold))), SizedBox(height: 18.v), _buildDeliveryMethodRadioGroup(context), SizedBox(height: 68.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 5.v), child: Text("Total", style: theme.textTheme.bodyLarge)), Text("23,000", style: CustomTextStyles.titleLargeSFProText)])), SizedBox(height: 5.v)])), bottomNavigationBar: _buildProceedToPaymentButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 65.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlack900, margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Checkout")); } 
/// Section Widget
Widget _buildDeliveryMethodRadioGroup(BuildContext context) { return Column(children: [Padding(padding: EdgeInsets.only(left: 21.h, top: 30.v, right: 156.h), child: CustomRadioButton(text: "Door delivery", value: radioList[0], groupValue: deliveryMethodRadioGroup, onChange: (value) {deliveryMethodRadioGroup = value;})), Padding(padding: EdgeInsets.fromLTRB(21.h, 25.v, 204.h, 34.v), child: CustomRadioButton(text: "Pick up", value: radioList[2], groupValue: deliveryMethodRadioGroup, onChange: (value) {deliveryMethodRadioGroup = value;}))]); } 
/// Section Widget
Widget _buildProceedToPaymentButton(BuildContext context) { return CustomElevatedButton(height: 70.v, text: "Proceed to payment", margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v), buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: CustomTextStyles.titleMediumSFProTextGray100, onPressed: () {onTapProceedToPaymentButton(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the iphone11ProMaxTwentyeightScreen when the action is triggered.
onTapProceedToPaymentButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.iphone11ProMaxTwentyeightScreen); } 
 }