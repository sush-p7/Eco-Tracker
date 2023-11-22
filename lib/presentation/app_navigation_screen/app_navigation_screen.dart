import 'package:eco/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Articles - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.articlesContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxTwentytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SIGN UP",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "VERIFICATION",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PERSONAL INFORMATION",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalInformationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "select username",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectUsernameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WELCOME",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SIGN IN",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FORGOT PASSWORD",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "VERIFICATION One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PASSWORD RESET",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passwordResetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WELCOME One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "main screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.mainScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - ThirtyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxThirtytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "select location recent",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectLocationRecentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyFive",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxTwentysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - ThirtyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxThirtyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "proceed to buy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.proceedToBuyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyNine",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentynineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentySeven",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyEight",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Plant",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailPlantScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Camera Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cameraTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "scanner and upload mode",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scannerAndUploadModeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Camera",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cameraScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Plant One - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.detailPlantOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CHAT LIST",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CHAT One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CHAT",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CHAT LIST share",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatListShareScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Articles",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailArticlesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile other",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileOtherScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
