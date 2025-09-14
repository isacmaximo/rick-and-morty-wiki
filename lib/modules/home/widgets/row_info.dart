import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/shared/card/default_card.dart';
import 'package:rick_and_morty_wiki/core/themes/text_styles.dart';
import 'package:rick_and_morty_wiki/utils/constants/colors.dart';
import 'package:rick_and_morty_wiki/utils/constants/sizes.dart';

class RowInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const RowInfo({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      width: defaultWithSize,
      margin: EdgeInsets.symmetric(vertical: 8.px),
      child: Row(
        children: [
          Icon(icon, size: 22.px, color: lightTextInfoColor),
          SizedBox(width: 4.px),
          Text(title, style: AppTextStyles.titleInfoText),
          Spacer(),
          SizedBox(
            width: 40.w,
            child: Text(
              value,
              style: AppTextStyles.valueInfoText,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
