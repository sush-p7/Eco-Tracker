import 'package:eco/core/app_export.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class PasswordResetScreen extends StatelessWidget {PasswordResetScreen({Key? key}) : super(key: key);

TextEditingController newpasswordController = TextEditingController();

TextEditingController newpasswordController1 = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 40.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imgIconlyLightOu, height: 20.v, width: 11.h, margin: EdgeInsets.only(left: 2.h), onTap: () {onTapImgIconlyLightOu(context);}), SizedBox(height: 35.v), Text("Pick a new Password", style: theme.textTheme.titleLarge), SizedBox(height: 11.v), Opacity(opacity: 0.7, child: Text("Help secure your account", style: CustomTextStyles.titleMediumSFProDisplayBlack900)), SizedBox(height: 23.v), Opacity(opacity: 0.7, child: Text("New Password", style: CustomTextStyles.titleSmallSFProDisplayBlack900)), SizedBox(height: 9.v), CustomTextFormField(controller: newpasswordController, obscureText: true), SizedBox(height: 11.v), Opacity(opacity: 0.7, child: Text("Confirm new Password", style: CustomTextStyles.titleSmallSFProDisplayBlack900)), SizedBox(height: 9.v), CustomTextFormField(controller: newpasswordController1, textInputAction: TextInputAction.done, obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003), Spacer(), CustomElevatedButton(height: 49.v, text: "Next", margin: EdgeInsets.only(left: 19.h, right: 20.h), buttonStyle: CustomButtonStyles.fillPrimary, onPressed: () {onTapNext(context);}, alignment: Alignment.center), SizedBox(height: 37.v), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtAlreadyhavean3(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "Already have an account? ", style: CustomTextStyles.titleSmallSFProDisplay), TextSpan(text: "Sign Up", style: CustomTextStyles.titleSmallSFProDisplayBold_1.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)))])))); } 
/// Navigates to the verificationOneScreen when the action is triggered.
onTapImgIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.verificationOneScreen); } 
/// Navigates to the welcomeOneScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.welcomeOneScreen); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapTxtAlreadyhavean3(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpScreen); } 
 }
