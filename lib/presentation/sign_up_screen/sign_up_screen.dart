import 'package:eco/core/app_export.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {SignUpScreen({Key? key}) : super(key: key);

TextEditingController mobileNoController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 44.v), child: Column(children: [SizedBox(height: 35.v), CustomImageView(imagePath: ImageConstant.imgIconlyLightOu, height: 20.v, width: 11.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 2.h)), SizedBox(height: 35.v), Align(alignment: Alignment.centerLeft, child: Text("Phone", style: theme.textTheme.titleLarge)), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Opacity(opacity: 0.7, child: Text("Enter your phone number", style: CustomTextStyles.titleMediumSFProDisplayBlack900))), SizedBox(height: 18.v), _buildMobileNoRow(context), SizedBox(height: 95.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Opacity(opacity: 0.5, child: CustomImageView(imagePath: ImageConstant.imgGroup65, height: 15.v, width: 22.h, margin: EdgeInsets.only(top: 3.v, bottom: 4.v))), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 5.h), child: Text("Ghana", style: CustomTextStyles.titleMediumPoppinsBlack900))), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 9.h), child: SizedBox(height: 22.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.black900.withOpacity(0.53))))), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("+233", style: CustomTextStyles.titleMediumPoppinsBlack900)))]), SizedBox(height: 5.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Opacity(opacity: 0.7, child: CustomImageView(imagePath: ImageConstant.imgGroup64, height: 15.v, width: 22.h, margin: EdgeInsets.only(top: 3.v, bottom: 5.v))), Opacity(opacity: 0.7, child: Padding(padding: EdgeInsets.only(left: 6.h), child: Text("Cameroon", style: CustomTextStyles.titleMediumPoppinsBlack900Medium))), Opacity(opacity: 0.7, child: Padding(padding: EdgeInsets.only(left: 9.h), child: SizedBox(height: 22.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.black900.withOpacity(0.6))))), Opacity(opacity: 0.7, child: Padding(padding: EdgeInsets.only(left: 9.h), child: Text("+237", style: CustomTextStyles.titleMediumPoppinsBlack900Medium)))]), SizedBox(height: 5.v), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.9, child: CustomImageView(imagePath: ImageConstant.imgGroup63, height: 15.v, width: 22.h, margin: EdgeInsets.only(top: 3.v, bottom: 6.v))), Opacity(opacity: 0.9, child: Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text("Niger", style: CustomTextStyles.titleMediumPoppinsBlack900Medium_2))), Opacity(opacity: 0.9, child: Padding(padding: EdgeInsets.only(left: 9.h), child: SizedBox(height: 25.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.black900.withOpacity(0.67), indent: 1.h, endIndent: 2.h)))), Opacity(opacity: 0.9, child: Padding(padding: EdgeInsets.only(left: 9.h), child: Text("+227", style: CustomTextStyles.titleMediumPoppinsBlack900Medium_2)))]), SizedBox(height: 3.v), Container(margin: EdgeInsets.symmetric(horizontal: 19.h), padding: EdgeInsets.symmetric(horizontal: 66.h, vertical: 4.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomImageView(imagePath: ImageConstant.imgGroup73, height: 15.v, width: 22.h, margin: EdgeInsets.only(top: 7.v, bottom: 5.v)), Padding(padding: EdgeInsets.only(left: 9.h, top: 4.v), child: Text("Nigeria", style: CustomTextStyles.titleMediumPoppinsOnSecondaryContainer)), Padding(padding: EdgeInsets.only(left: 9.h), child: SizedBox(height: 28.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: theme.colorScheme.onSecondaryContainer.withOpacity(1), indent: 4.h, endIndent: 2.h))), Padding(padding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 1.v), child: Text("+234", style: CustomTextStyles.titleMediumPoppinsOnSecondaryContainer))])), SizedBox(height: 5.v), _buildSeventyTwo(context, userImage: ImageConstant.imgGroup66, countryName: "America", countryNumber: "+1"), SizedBox(height: 5.v), _buildSeventyTwo(context, userImage: ImageConstant.imgGroup60, countryName: "Canada", countryNumber: "+1"), Spacer(), CustomElevatedButton(height: 49.v, text: "Next", margin: EdgeInsets.only(left: 19.h, right: 20.h), buttonStyle: CustomButtonStyles.fillPrimary, onPressed: () {onTapNext(context);}), SizedBox(height: 37.v), GestureDetector(onTap: () {onTapTxtAlreadyhavean(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "Already have an account? ", style: CustomTextStyles.titleSmallSFProDisplay), TextSpan(text: "Sign In", style: CustomTextStyles.titleSmallSFProDisplayBold_1.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left))]))))); } 
/// Section Widget
Widget _buildMobileNoRow(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 11.v), decoration: AppDecoration.outlineCyan, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgGroup73, height: 22.v, width: 32.h, margin: EdgeInsets.only(top: 2.v)), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 5.h, top: 1.v), child: Text("+234", style: CustomTextStyles.titleMediumPoppinsBlack900))), Expanded(child: Padding(padding: EdgeInsets.only(left: 17.h, bottom: 4.v), child: CustomTextFormField(controller: mobileNoController, hintText: "8130400445", hintStyle: CustomTextStyles.titleMediumSFProDisplayBlack900Medium_1, textInputAction: TextInputAction.done, textInputType: TextInputType.phone)))])); } 
/// Common widget
Widget _buildSeventyTwo(BuildContext context, {required String userImage, required String countryName, required String countryNumber, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Opacity(opacity: 0.5, child: CustomImageView(imagePath: userImage, height: 15.v, width: 22.h, margin: EdgeInsets.symmetric(vertical: 4.v))), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 5.h), child: Text(countryName, style: CustomTextStyles.titleMediumPoppinsBlack900.copyWith(color: appTheme.black900.withOpacity(0.53))))), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 9.h), child: SizedBox(height: 22.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.black900.withOpacity(0.53))))), Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text(countryNumber, style: CustomTextStyles.titleMediumPoppinsBlack900.copyWith(color: appTheme.black900.withOpacity(0.53)))))]); } 
/// Navigates to the verificationScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.verificationScreen); } 
/// Navigates to the signInScreen when the action is triggered.
onTapTxtAlreadyhavean(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signInScreen); } 
 }
