import 'package:flutter/material.dart';
import 'package:rick_and_morty_wiki/core/themes/text_styles.dart';
import 'package:rick_and_morty_wiki/utils/contants/colors.dart';

enum StatusEnum { alive, dead, unknown }

extension StatusExtension on StatusEnum {
  static StatusEnum fromString(String value) {
    switch (value.toLowerCase()) {
      case 'alive':
        return StatusEnum.alive;
      case 'dead':
        return StatusEnum.dead;
      default:
        return StatusEnum.unknown;
    }
  }

  String get value {
    switch (this) {
      case StatusEnum.alive:
        return 'Alive';
      case StatusEnum.dead:
        return 'Dead';
      case StatusEnum.unknown:
        return 'Unknown';
    }
  }

  TextStyle get textStyle {
    switch (this) {
      case StatusEnum.alive:
        return AppTextStyles.aliveText;
      case StatusEnum.dead:
        return AppTextStyles.deadText;
      case StatusEnum.unknown:
        return AppTextStyles.unknowStatusText;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case StatusEnum.alive:
        return aliveFlagBackgroundColor;
      case StatusEnum.dead:
        return deadFlagBackgroundColor;
      case StatusEnum.unknown:
        return darkTextInfoColor;
    }
  }
}
