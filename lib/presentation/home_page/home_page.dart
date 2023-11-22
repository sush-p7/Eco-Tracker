import '../home_page/widgets/home_item_widget.dart';
import 'package:eco/core/app_export.dart';
import 'package:eco/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildHome(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              right: 21.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 340.h,
                    margin: EdgeInsets.only(
                      left: 22.h,
                      right: 20.h,
                    ),
                    child: Text(
                      "As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumSFProDisplayGray70002
                          .copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "Material & care",
                    style: CustomTextStyles.titleSmallSFProDisplay_1,
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  width: 318.h,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    right: 42.h,
                  ),
                  child: Text(
                    "All products are made with carefully selected materials. Please handle with care for longer product life.\n- Protect from direct light, heat and rain. Should it \n   become wet, dry it immediately with a soft cloth\n- Store in the provided flannel bag or box\n- Clean with a soft, dry cloth",
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumSFProDisplayGray70002
                        .copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 184.v),
                Text(
                  "Shop by categories",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 24.v),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 4,
                  crossAxisSpacing: 31.h,
                  mainAxisSpacing: 31.h,
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.fit(2);
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return HomeItemWidget();
                  },
                ),
                SizedBox(height: 36.v),
                CustomOutlinedButton(
                  width: 240.h,
                  text: "Browse all categories".toUpperCase(),
                  margin: EdgeInsets.only(left: 57.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
