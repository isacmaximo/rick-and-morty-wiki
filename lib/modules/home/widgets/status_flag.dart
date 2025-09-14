import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/shared/card/default_card.dart';
import 'package:rick_and_morty_wiki/utils/enums/status_enum.dart';

class StatusFlag extends StatelessWidget {
  final String status;

  const StatusFlag({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final statusEnum = StatusExtension.fromString(status);

    return DefaultCard(
      borderRadius: 24.px,
      padding: EdgeInsets.symmetric(horizontal: 12.px, vertical: 8.px),
      backgroundColor: statusEnum.backgroundColor,
      child: Text(status, style: statusEnum.textStyle),
    );
  }
}
