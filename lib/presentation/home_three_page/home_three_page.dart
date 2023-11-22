import '../home_three_page/widgets/homethree_item_widget.dart';
import 'package:eco/core/app_export.dart';
import 'package:eco/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class HomeThreePage extends StatefulWidget {
  const HomeThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeThreePageState createState() => HomeThreePageState();
}

class HomeThreePageState extends State<HomeThreePage>
    with AutomaticKeepAliveClientMixin<HomeThreePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
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
                    width: 333.h,
                    margin: EdgeInsets.only(
                      left: 22.h,
                      right: 27.h,
                    ),
                    child: Text(
                      "Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumSFProDisplayGray70002
                          .copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "Return policy",
                    style: CustomTextStyles.titleSmallSFProDisplay_1,
                  ),
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 345.h,
                    margin: EdgeInsets.only(
                      left: 22.h,
                      right: 15.h,
                    ),
                    child: Text(
                      "Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumSFProDisplayGray70002
                          .copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 204.v),
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
                    return HomethreeItemWidget();
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
