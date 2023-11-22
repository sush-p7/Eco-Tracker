import 'package:eco/core/app_export.dart';import 'package:eco/widgets/app_bar/appbar_leading_image.dart';import 'package:eco/widgets/app_bar/appbar_subtitle_five.dart';import 'package:eco/widgets/app_bar/appbar_subtitle_one.dart';import 'package:eco/widgets/app_bar/custom_app_bar.dart';import 'package:eco/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ChatOneScreen extends StatelessWidget {ChatOneScreen({Key? key}) : super(key: key);

TextEditingController searchEditTextController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 9.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildYesterdayStack(context), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(right: 150.h), child: _buildIMFineWhatBout(context, messageText: "when are you ready??", messageTime: "06:30pm")), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 150.h), child: _buildIMFineWhatBout(context, messageText: "Okay i will....THANK YOUU", messageTime: "06:32pm")), SizedBox(height: 19.v), Padding(padding: EdgeInsets.only(left: 150.h), child: _buildIMFineWhatBout(context, messageText: "I called you yesterday but you didn’t pick the call, i hope all is well tho........see you later today....xoxo", messageTime: "08:33pm")), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(right: 150.h), child: _buildIMFineWhatBout(context, messageText: "Alright I’m coming to meet you", messageTime: "06:30pm")), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSearchEditText(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 104.v, leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOu, margin: EdgeInsets.only(left: 32.h, top: 38.v, bottom: 28.v), onTap: () {onTapIconlyLightOu(context);}), centerTitle: true, title: Column(children: [AppbarSubtitleOne(text: "Amina Mark"), SizedBox(height: 4.v), AppbarSubtitleFive(text: "Last seen 2hrs ago", margin: EdgeInsets.only(left: 8.h, right: 5.h))]), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildYesterdayStack(BuildContext context) { return SizedBox(height: 161.v, width: 356.h, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 138.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("Yesterday", style: CustomTextStyles.labelMediumSFProDisplayBlack900), SizedBox(height: 137.v), Text("Today 06:30pm", style: CustomTextStyles.labelMediumSFProDisplayBlack900)]))), Padding(padding: EdgeInsets.only(top: 24.v), child: _buildIMFineWhatBout(context, messageText: "Hey, How are you today?", messageTime: "12:31pm")), Padding(padding: EdgeInsets.only(bottom: 32.v), child: _buildIMFineWhatBout(context, messageText: "I’m fine, what bout you?", messageTime: "12:32pm"))])); } 
/// Section Widget
Widget _buildSearchEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 23.v), child: CustomTextFormField(controller: searchEditTextController, hintText: "Type here to search", hintStyle: CustomTextStyles.bodyLargeSFProDisplayBlack900, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 15.v, 5.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgPlusPrimary, height: 27.adaptSize, width: 27.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 59.v), suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgSend, height: 39.adaptSize, width: 39.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.symmetric(vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.outlineBlack)); } 
/// Common widget
Widget _buildIMFineWhatBout(BuildContext context, {required String messageText, required String messageTime, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 4.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL201), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 6.v), Text(messageText, style: CustomTextStyles.labelLargeMedium.copyWith(color: appTheme.black900)), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 1.h), child: Text(messageTime, style: CustomTextStyles.sFProDisplayBlack900.copyWith(color: appTheme.black900))))])); } 
/// Navigates to the chatListScreen when the action is triggered.
onTapIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chatListScreen); } 
 }