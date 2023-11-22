import 'package:eco/core/app_export.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {ForgotPasswordScreen({Key? key}) : super(key: key);

TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 40.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imgIconlyLightOu, height: 20.v, width: 11.h, margin: EdgeInsets.only(left: 2.h), onTap: () {onTapImgIconlyLightOu(context);}), SizedBox(height: 37.v), Text("Forgot Password", style: theme.textTheme.titleLarge), SizedBox(height: 9.v), Opacity(opacity: 0.7, child: Text("Let’s help recover your account", style: CustomTextStyles.titleMediumSFProDisplayBlack900)), SizedBox(height: 23.v), Opacity(opacity: 0.7, child: Text("Username", style: CustomTextStyles.titleSmallSFProDisplayBlack900)), SizedBox(height: 9.v), _buildUserName(context), SizedBox(height: 11.v), Opacity(opacity: 0.7, child: Text("Email", style: CustomTextStyles.titleSmallSFProDisplayBlack900)), SizedBox(height: 9.v), _buildEmail(context), SizedBox(height: 11.v), Opacity(opacity: 0.7, child: Text("Phone Number", style: CustomTextStyles.titleSmallSFProDisplayBlack900)), SizedBox(height: 9.v), _buildPhoneNumber(context), SizedBox(height: 12.v), Opacity(opacity: 0.7, child: Text("Last Remembered password", style: CustomTextStyles.titleSmallSFProDisplayBlack900)), SizedBox(height: 8.v), _buildPassword(context), Spacer(), _buildNext(context), SizedBox(height: 37.v), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtAlreadyhavean3(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "Already have an account? ", style: CustomTextStyles.titleSmallSFProDisplay), TextSpan(text: "Sign Up", style: CustomTextStyles.titleSmallSFProDisplayBold_1.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)))])))); } 
/// Section Widget
Widget _buildUserName(BuildContext context) { return CustomTextFormField(controller: userNameController); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return CustomTextFormField(controller: phoneNumberController, obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return CustomTextFormField(controller: passwordController, textInputAction: TextInputAction.done, obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 49.v, text: "Next", margin: EdgeInsets.only(left: 19.h, right: 20.h), buttonStyle: CustomButtonStyles.fillPrimary, onPressed: () {onTapNext(context);}, alignment: Alignment.center); } 
/// Navigates to the signInScreen when the action is triggered.
onTapImgIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signInScreen); } 
/// Navigates to the verificationOneScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.verificationOneScreen); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapTxtAlreadyhavean3(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpScreen); } 
 }
