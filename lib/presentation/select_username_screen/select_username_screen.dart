import 'package:eco/core/app_export.dart';import 'package:eco/widgets/custom_elevated_button.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SelectUsernameScreen extends StatelessWidget {SelectUsernameScreen({Key? key}) : super(key: key);

TextEditingController usernameFieldController = TextEditingController();

TextEditingController passwordFieldController = TextEditingController();

TextEditingController confirmPasswordFieldController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 40.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imgIconlyLightOu, height: 20.v, width: 11.h, margin: EdgeInsets.only(left: 2.h), onTap: () {onTapImgIconlyLightOu(context);}), SizedBox(height: 35.v), Text("Select a Username", style: CustomTextStyles.titleLargePoppins), SizedBox(height: 7.v), Opacity(opacity: 0.7, child: Text("Help secure your account", style: CustomTextStyles.titleMediumPoppinsBlack900Medium)), SizedBox(height: 18.v), Opacity(opacity: 0.7, child: Text("Username", style: CustomTextStyles.titleSmallPoppinsBlack900)), SizedBox(height: 5.v), _buildUsernameField(context), SizedBox(height: 11.v), Opacity(opacity: 0.7, child: Text("Password", style: CustomTextStyles.titleSmallPoppinsBlack900)), SizedBox(height: 5.v), _buildPasswordField(context), SizedBox(height: 11.v), Opacity(opacity: 0.7, child: Text("Confirm Password", style: CustomTextStyles.titleSmallPoppinsBlack900)), SizedBox(height: 5.v), _buildConfirmPasswordField(context), Spacer(), _buildNextButton(context), SizedBox(height: 37.v), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtAlreadyhavean(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "Already have an account? ", style: CustomTextStyles.titleSmallSFProDisplay), TextSpan(text: "Sign In", style: CustomTextStyles.titleSmallSFProDisplayBold_1.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)))])))); } 
/// Section Widget
Widget _buildUsernameField(BuildContext context) { return CustomTextFormField(controller: usernameFieldController); } 
/// Section Widget
Widget _buildPasswordField(BuildContext context) { return CustomTextFormField(controller: passwordFieldController, obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildConfirmPasswordField(BuildContext context) { return CustomTextFormField(controller: confirmPasswordFieldController, textInputAction: TextInputAction.done, obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10003); } 
/// Section Widget
Widget _buildNextButton(BuildContext context) { return CustomElevatedButton(height: 49.v, text: "Next", margin: EdgeInsets.only(left: 19.h, right: 20.h), buttonStyle: CustomButtonStyles.fillPrimary, onPressed: () {onTapNextButton(context);}, alignment: Alignment.center); } 
/// Navigates to the personalInformationScreen when the action is triggered.
onTapImgIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.personalInformationScreen); } 
/// Navigates to the welcomeScreen when the action is triggered.
onTapNextButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.welcomeScreen); } 
/// Navigates to the signInScreen when the action is triggered.
onTapTxtAlreadyhavean(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signInScreen); } 
 }
