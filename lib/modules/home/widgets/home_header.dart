import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/themes/text_styles.dart';
import 'package:rick_and_morty_wiki/utils/contants/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultWithSize,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 60.w,
            child: Column(
              children: [
                Text('Rick and Morty Wiki', style: AppTextStyles.biggestTitle),
                Text(
                  'Welcome to the Central Finite Curve of character knowledge.',
                  maxLines: 3,
                  style: AppTextStyles.hintText,
                ),
              ],
            ),
          ),
          Image.asset('assets/images/top_home.png', width: 20.w),
        ],
      ),
    );
  }
}
