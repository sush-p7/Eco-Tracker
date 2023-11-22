import 'package:eco/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DetailPlantOnePage extends StatefulWidget {
  const DetailPlantOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailPlantOnePageState createState() => DetailPlantOnePageState();
}

class DetailPlantOnePageState extends State<DetailPlantOnePage>
    with AutomaticKeepAliveClientMixin<DetailPlantOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineOnSecondaryContainer,
          child: Padding(
            padding: EdgeInsets.only(
              left: 36.h,
              right: 57.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 97.h),
                  child: Text(
                    "4.5",
                    style: CustomTextStyles.labelLargeSFProTextBluegray700,
                  ),
                ),
                SizedBox(height: 27.v),
                Row(
                  children: [
                    Text(
                      "Kingdom",
                      style: CustomTextStyles.titleSmallSFProTextBluegray700,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 55.h),
                      child: Text(
                        "Family",
                        style: CustomTextStyles.titleSmallSFProTextBluegray700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.v),
                Row(
                  children: [
                    Text(
                      "Plantae",
                      style: CustomTextStyles.bodyMediumSFProTextGray60001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 66.h),
                      child: Text(
                        "Amaranthaceae",
                        style: CustomTextStyles.bodyMediumSFProTextGray60001,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 31.v),
                Text(
                  "Description",
                  style: CustomTextStyles.titleSmallSFProTextBluegray700,
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 321.h,
                  child: Text(
                    "Spinach is thought to have originated in ancient \nPersia (modern Iran and neighboring countries). \nIt is not known by whom, or when, spinach was \nintroduced to India, but the plant was subsequ\nently introduced to ancient China, where it was \nknown as \"Persian vegetable\" ",
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumSFProTextGray60001_1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
