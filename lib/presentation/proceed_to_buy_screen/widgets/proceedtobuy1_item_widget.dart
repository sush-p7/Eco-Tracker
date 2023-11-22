import 'package:eco/core/app_export.dart';
import 'package:eco/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Proceedtobuy1ItemWidget extends StatelessWidget {
  const Proceedtobuy1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 224.v,
        width: 170.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle125,
              height: 224.v,
              width: 170.h,
              alignment: Alignment.center,
            ),
            CustomElevatedButton(
              width: 115.h,
              text: "Handle bags",
              buttonTextStyle: theme.textTheme.titleMedium!,
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}
