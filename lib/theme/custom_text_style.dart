import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeSFProDisplayBlack900 =>
      theme.textTheme.bodyLarge!.sFProDisplay.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 16.fSize,
      );
  static get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto;
  static get bodyMediumRobotoCyan90001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.cyan90001,
      );
  static get bodyMediumSFProDisplay => theme.textTheme.bodyMedium!.sFProDisplay;
  static get bodyMediumSFProDisplayBluegray900 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.blueGray900,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProDisplayCyan90001 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.cyan90001,
      );
  static get bodyMediumSFProDisplayGray70002 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.gray70002,
      );
  static get bodyMediumSFProDisplayPrimary =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSFProDisplayPrimary15 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProDisplay_1 =>
      theme.textTheme.bodyMedium!.sFProDisplay;
  static get bodyMediumSFProText =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProTextBluegray100 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyMediumSFProTextBluegray20002 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blueGray20002,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProTextBluegray20002_1 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blueGray20002,
      );
  static get bodyMediumSFProTextBluegray20002_2 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blueGray20002,
      );
  static get bodyMediumSFProTextGray60001 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumSFProTextGray60001_1 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumSFProTextGray60003 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.gray60003,
      );
  static get bodyMediumSFProTextPrimary =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumTealA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.tealA400,
      );
  static get bodyMediumWorkSans => theme.textTheme.bodyMedium!.workSans;
  static get bodyMediumWorkSans_1 => theme.textTheme.bodyMedium!.workSans;
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray20001,
        fontSize: 10.fSize,
      );
  static get bodySmallGray60004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60004,
        fontSize: 12.fSize,
      );
  static get bodySmallMontserratGray10003 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.gray10003,
        fontSize: 8.fSize,
      );
  static get bodySmallMontserratGray40001 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.gray40001,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsBluegray20001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray20001,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsTeal800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.teal800.withOpacity(0.6),
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallRobotoBlack900 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallSFProTextOnSecondaryContainer =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get bodySmallTeal800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal800.withOpacity(0.6),
        fontSize: 10.fSize,
      );
  static get bodySmallWorkSansGray60004 =>
      theme.textTheme.bodySmall!.workSans.copyWith(
        color: appTheme.gray60004,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displaySmallSFProDisplayPrimary =>
      theme.textTheme.displaySmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 35.fSize,
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeSFProRoundedPrimary =>
      theme.textTheme.headlineLarge!.sFProRounded.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get headlineLargeSFProTextOnSecondaryContainer =>
      theme.textTheme.headlineLarge!.sFProText.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumGray400 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get headlineMediumSFProDisplayPrimary =>
      theme.textTheme.headlineMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 28.fSize,
      );
  // Label text style
  static get labelLargeDeeporangeA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMontserratGray600 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMontserratOnSecondaryContainer =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratOnSecondaryContainerSemiBold =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratOnSecondaryContainerSemiBold13 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratPrimary =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratPrimarySemiBold =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins;
  static get labelLargePoppinsMedium =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSFProTextBlue500 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.blue500,
      );
  static get labelLargeSFProTextBluegray700 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.fSize,
      );
  static get labelLargeSFProTextPrimaryContainer =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSFProTextTealA400 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.tealA400,
      );
  static get labelMediumOnSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get labelMediumOnSecondaryContainerSemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get labelMediumPrimarySemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProDisplayBlack900 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get labelMediumSFProDisplayOnSecondaryContainer =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get labelMediumSFProDisplayOnSecondaryContainer_1 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get labelMediumSFProTextBluegray80002 =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        color: appTheme.blueGray80002,
      );
  static get labelMediumSFProTextBluegray80002Bold =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumSFProTextGray80002 =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        color: appTheme.gray80002,
      );
  static get labelMediumSFProTextOnSecondaryContainer =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get labelMediumSFProTextOnSecondaryContainerSemiBold =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWorkSansOnSecondaryContainer =>
      theme.textTheme.labelMedium!.workSans.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallSFProTextGray40002 =>
      theme.textTheme.labelSmall!.sFProText.copyWith(
        color: appTheme.gray40002,
        fontSize: 9.fSize,
      );
  static get labelSmallSFProTextPrimaryContainer =>
      theme.textTheme.labelSmall!.sFProText.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 9.fSize,
      );
  // Montserrat text style
  static get montserratOnSecondaryContainer => TextStyle(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
  static get montserratPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
  static get montserratPrimaryRegular => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
  // S text style
  static get sFProDisplayBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).sFProDisplay;
  static get sFProDisplayOnSecondaryContainer => TextStyle(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).sFProDisplay;
  static get sFProDisplayPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).sFProDisplay;
  static get sFProTextBluegray80002 => TextStyle(
        color: appTheme.blueGray80002,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).sFProText;
  static get sFProTextOnSecondaryContainer => TextStyle(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.15),
        fontSize: 79.fSize,
        fontWeight: FontWeight.w800,
      ).sFProText;
  static get sFProTextPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).sFProText;
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargePlayfairDisplay =>
      theme.textTheme.titleLarge!.playfairDisplay.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins;
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSFProText =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeSFProTextBluegray80002 =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        color: appTheme.blueGray80002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumMontserratGray700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.gray700,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900Medium_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900Medium_2 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsOnSecondaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsOnSecondaryContainerSemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRobotoBlack900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplayBlack900 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplayBlack900Medium =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplayBlack900Medium_1 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplayBlack900SemiBold =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProDisplayGray40001 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplayOnSecondaryContainer =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplayPrimary =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProDisplayPrimaryMedium =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProTextBlack900 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextBlack900Medium =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProTextBlack900SemiBold =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextBluegray20002 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.blueGray20002,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProTextGray100 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.gray100,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextPrimary =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWorkSansBlack900 =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWorkSansBlack90018 =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumWorkSansOnSecondaryContainer =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get titleMediumWorkSansOnSecondaryContainerMedium =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGilroyPrimary =>
      theme.textTheme.titleSmall!.gilroy.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMontserratGray40001 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray40001,
      );
  static get titleSmallMontserratGray800 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins;
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get titleSmallSFProDisplay => theme.textTheme.titleSmall!.sFProDisplay;
  static get titleSmallSFProDisplayBlack900 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get titleSmallSFProDisplayBold =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProDisplayBold_1 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProDisplayGray5001 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.gray5001,
      );
  static get titleSmallSFProDisplayPrimary =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallSFProDisplayPrimary_1 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get titleSmallSFProDisplay_1 =>
      theme.textTheme.titleSmall!.sFProDisplay;
  static get titleSmallSFProTextBluegray700 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSFProTextBluegray80002 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProTextGray400 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSFProTextGray80002 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.gray80002,
      );
}

extension on TextStyle {
  TextStyle get playfairDisplay {
    return copyWith(
      fontFamily: 'Playfair Display',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sFProRounded {
    return copyWith(
      fontFamily: 'SF Pro Rounded',
    );
  }
}
