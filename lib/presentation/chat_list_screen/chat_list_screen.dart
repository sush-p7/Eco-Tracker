import '../chat_list_screen/widgets/aminamark_item_widget.dart';
import '../chat_list_screen/widgets/unsplashfiqtetllw_item_widget.dart';
import 'package:eco/core/app_export.dart';
import 'package:eco/presentation/articles_page/articles_page.dart';
import 'package:eco/widgets/custom_bottom_bar.dart';
import 'package:eco/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  ChatListScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: 815.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildUserProfile(context),
              _buildRecentActivity(context),
              _buildChatList(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 4.h,
          bottom: 29.v,
        ),
        padding: EdgeInsets.symmetric(vertical: 17.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return AminamarkItemWidget();
              },
            ),
            SizedBox(height: 389.v),
            Padding(
              padding: EdgeInsets.only(left: 54.h),
              child: Text(
                "On my way dear",
                style: CustomTextStyles.bodySmallBluegray200,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentActivity(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashLi7jb1925j0,
            height: 49.adaptSize,
            width: 49.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 11.v,
              bottom: 22.v,
            ),
            child: Text(
              "Hassan Ad",
              style: theme.textTheme.labelLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 205.h,
              top: 7.v,
              bottom: 29.v,
            ),
            child: Text(
              "yesterday",
              style: CustomTextStyles.bodySmallBluegray20001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChatList(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.h,
          top: 68.v,
          right: 4.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "People",
                style: CustomTextStyles.titleMediumSFProDisplayBlack900SemiBold,
              ),
            ),
            SizedBox(height: 24.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Type here to search",
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 27.v),
            Text(
              "Frequently chatted",
              style: CustomTextStyles.titleMediumSFProDisplayBlack900Medium,
            ),
            SizedBox(height: 6.v),
            SizedBox(
              height: 73.v,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 18.h,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return UnsplashfiqtetllwItemWidget();
                },
              ),
            ),
            SizedBox(height: 27.v),
            Text(
              "All Messages",
              style: CustomTextStyles.titleSmallSFProDisplay_1,
            ),
            SizedBox(height: 68.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.articlesPage;
      case BottomBarEnum.News:
        return "/";
      case BottomBarEnum.People:
        return "/";
      case BottomBarEnum.Me:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.articlesPage:
        return ArticlesPage();
      default:
        return DefaultWidget();
    }
  }
}
