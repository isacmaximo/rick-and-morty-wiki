import 'package:flutter/material.dart';
import 'package:rick_and_morty_wiki/utils/constants/colors.dart';

abstract class AppTextStyles {
  static const TextStyle biggestTitle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: primaryTextColor,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: darkTextInfoColor,
  );

  static const TextStyle pageableText = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: secondaryColor,
  );

  static const TextStyle hintText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: secondaryTextColor,
  );

  static const TextStyle valueInfoText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: darkTextInfoColor,
  );

  static const TextStyle titleInfoText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: lightTextInfoColor,
  );

  static const TextStyle cardTitleInfoText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: darkTextInfoColor,
  );

  static const TextStyle cardValueInfoText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: lightTextInfoColor,
  );

  static const TextStyle deadText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: deadFlagTextColor,
  );

  static const TextStyle aliveText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: aliveFlagTextColor,
  );

  static const TextStyle unknowStatusText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: backgroundColor,
  );
}
