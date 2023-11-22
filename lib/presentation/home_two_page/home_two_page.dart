import '../home_two_page/widgets/hometwo_item_widget.dart';
import 'package:eco/core/app_export.dart';
import 'package:eco/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class HomeTwoPage extends StatefulWidget {
  const HomeTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTwoPageState createState() => HomeTwoPageState();
}

class HomeTwoPageState extends State<HomeTwoPage>
    with AutomaticKeepAliveClientMixin<HomeTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildHomeTwo(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeTwo(BuildContext context) {
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
                Container(
                  width: 307.h,
                  margin: EdgeInsets.only(
                    left: 23.h,
                    right: 52.h,
                  ),
                  child: Text(
                    "We accepts the following forms of payment for online purchases:",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumSFProDisplayGray70002
                        .copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 351.h,
                    margin: EdgeInsets.only(
                      left: 23.h,
                      right: 8.h,
                    ),
                    child: Text(
                      "PayPal may not be used to purchase Made to Order Décor or DIY items.\n\nThe full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed.",
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumSFProDisplayGray70002
                          .copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 216.v),
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
                    return HometwoItemWidget();
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
