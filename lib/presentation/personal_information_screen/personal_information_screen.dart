import 'package:eco/core/app_export.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class PersonalInformationScreen extends StatelessWidget {PersonalInformationScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController dateOfBirthController = TextEditingController();

TextEditingController editTextController = TextEditingController();

TextEditingController editTextController1 = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 40.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imgIconlyLightOu, height: 20.v, width: 11.h, margin: EdgeInsets.only(left: 2.h), onTap: () {onTapImgIconlyLightOu(context);}), SizedBox(height: 34.v), Text("Personal Information", style: CustomTextStyles.titleLargePoppins), SizedBox(height: 7.v), Opacity(opacity: 0.7, child: Text("Please fill the following", style: CustomTextStyles.titleMediumPoppinsBlack900Medium)), SizedBox(height: 18.v), Opacity(opacity: 0.7, child: Text("Full name", style: CustomTextStyles.titleSmallPoppinsBlack900)), SizedBox(height: 5.v), _buildFullName(context), SizedBox(height: 11.v), Opacity(opacity: 0.7, child: Text("Email Address", style: CustomTextStyles.titleSmallPoppinsBlack900)), SizedBox(height: 5.v), _buildEmail(context), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(right: 95.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Opacity(opacity: 0.7, child: Text("Date of birth", style: CustomTextStyles.titleSmallPoppinsBlack900)), Opacity(opacity: 0.7, child: Text("Gender", style: CustomTextStyles.titleSmallPoppinsBlack900))])), SizedBox(height: 5.v), _buildDateOfBirth1(context), SizedBox(height: 11.v), _buildAbout(context), SizedBox(height: 5.v), _buildEditText1(context), Spacer(), _buildNext(context), SizedBox(height: 37.v), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtAlreadyhavean(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "Already have an account? ", style: CustomTextStyles.titleSmallSFProDisplay), TextSpan(text: "Sign In", style: CustomTextStyles.titleSmallSFProDisplayBold_1.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)))])))); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return CustomTextFormField(controller: fullNameController); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildDateOfBirth(BuildContext context) { return CustomTextFormField(width: 147.h, controller: dateOfBirthController, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildEditText(BuildContext context) { return CustomTextFormField(width: 147.h, controller: editTextController, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildDateOfBirth1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildDateOfBirth(context), _buildEditText(context)]); } 
/// Section Widget
Widget _buildAbout(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 19.h), child: Row(children: [Opacity(opacity: 0.7, child: Text("About", style: CustomTextStyles.titleSmallPoppinsBlack900)), Spacer(flex: 28), CustomImageView(imagePath: ImageConstant.imgLocation, height: 8.adaptSize, width: 8.adaptSize, margin: EdgeInsets.only(top: 5.v, bottom: 6.v)), Spacer(flex: 71), CustomImageView(imagePath: ImageConstant.imgLocation, height: 8.adaptSize, width: 8.adaptSize, margin: EdgeInsets.only(top: 5.v, bottom: 6.v))])); } 
/// Section Widget
Widget _buildEditText1(BuildContext context) { return CustomTextFormField(controller: editTextController1, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 49.v, text: "Next", margin: EdgeInsets.only(left: 19.h, right: 20.h), buttonStyle: CustomButtonStyles.fillPrimary, onPressed: () {onTapNext(context);}, alignment: Alignment.center); } 
/// Navigates to the verificationScreen when the action is triggered.
onTapImgIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.verificationScreen); } 
/// Navigates to the selectUsernameScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.selectUsernameScreen); } 
/// Navigates to the signInScreen when the action is triggered.
onTapTxtAlreadyhavean(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signInScreen); } 
 }
