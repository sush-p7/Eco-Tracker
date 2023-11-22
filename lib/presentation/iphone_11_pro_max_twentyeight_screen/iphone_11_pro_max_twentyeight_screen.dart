import 'package:eco/core/app_export.dart';import 'package:eco/widgets/app_bar/appbar_leading_image.dart';import 'package:eco/widgets/app_bar/appbar_subtitle_two.dart';import 'package:eco/widgets/app_bar/custom_app_bar.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class Iphone11ProMaxTwentyeightScreen extends StatelessWidget {Iphone11ProMaxTwentyeightScreen({Key? key}) : super(key: key);

String paymentMethodRadioGroup = "";

List<String> radioList = ["lbl_card", "lbl_bank_account"];

String deliveryMethodRadioGroup = "";

List<String> radioList1 = ["lbl_door_delivery", "lbl_pick_up"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 27.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Payment", style: theme.textTheme.displaySmall)), SizedBox(height: 45.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Payment method", style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold)), SizedBox(height: 18.v), _buildPaymentMethodRadioGroup(context), SizedBox(height: 19.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Delivery method.", style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold)), SizedBox(height: 18.v), _buildDeliveryMethodRadioGroup(context), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 5.v), child: Text("Total", style: theme.textTheme.bodyLarge)), Text("23,000", style: CustomTextStyles.titleLargeSFProText)])), SizedBox(height: 5.v)])), bottomNavigationBar: _buildProceedToPaymentButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 65.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlack900, margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Checkout")); } 
/// Section Widget
Widget _buildPaymentMethodRadioGroup(BuildContext context) { return Column(children: [Padding(padding: EdgeInsets.only(left: 21.h, top: 20.v, right: 175.h), child: CustomRadioButton(text: "Card", value: radioList[0], groupValue: paymentMethodRadioGroup, padding: EdgeInsets.symmetric(vertical: 9.v), onChange: (value) {paymentMethodRadioGroup = value;})), Padding(padding: EdgeInsets.fromLTRB(21.h, 14.v, 104.h, 75.v), child: CustomRadioButton(text: "Bank account", value: radioList[2], groupValue: paymentMethodRadioGroup, padding: EdgeInsets.symmetric(vertical: 9.v), onChange: (value) {paymentMethodRadioGroup = value;}))]); } 
/// Section Widget
Widget _buildDeliveryMethodRadioGroup(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h), child: Column(children: [Padding(padding: EdgeInsets.only(left: 21.h, top: 30.v, right: 156.h), child: CustomRadioButton(text: "Door delivery", value: radioList1[0], groupValue: deliveryMethodRadioGroup, onChange: (value) {deliveryMethodRadioGroup = value;})), Padding(padding: EdgeInsets.fromLTRB(21.h, 25.v, 204.h, 34.v), child: CustomRadioButton(text: "Pick up", value: radioList1[2], groupValue: deliveryMethodRadioGroup, onChange: (value) {deliveryMethodRadioGroup = value;}))])); } 
/// Section Widget
Widget _buildProceedToPaymentButton(BuildContext context) { return CustomElevatedButton(height: 70.v, text: "Proceed to payment", margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v), buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: CustomTextStyles.titleMediumSFProTextGray100); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
