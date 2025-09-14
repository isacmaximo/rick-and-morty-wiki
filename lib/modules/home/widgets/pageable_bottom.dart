import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/shared/card/default_card.dart';
import 'package:rick_and_morty_wiki/core/themes/text_styles.dart';
import 'package:rick_and_morty_wiki/utils/constants/sizes.dart';

class PageableBottom extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Future<void> Function()? onNext;
  final Future<void> Function()? onPrevious;

  const PageableBottom({
    super.key,
    required this.currentPage,
    required this.totalPages,
    this.onNext,
    this.onPrevious,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return DefaultCard(
      margin: EdgeInsets.symmetric(vertical: 24.px),
      width: defaultWithSize,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.px),
        child: Row(
          children: [
            GestureDetector(
              onTap: onPrevious,
              child: DefaultCard(
                border: Border.all(
                  width: 4,
                  color: currentPage == 1
                      ? colorScheme.primary
                      : colorScheme.secondary,
                ),
                child: Center(
                  child: Icon(
                    Icons.chevron_left,
                    size: 34.px,
                    color: currentPage == 1
                        ? colorScheme.primary
                        : colorScheme.secondary,
                  ),
                ),
              ),
            ),
            Spacer(),
            DefaultCard(
              border: Border.all(width: 4),
              padding: EdgeInsets.symmetric(horizontal: 8.px),
              child: Text(
                '$currentPage / $totalPages',
                style: AppTextStyles.pageableText,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: onNext,
              child: DefaultCard(
                border: Border.all(
                  width: 4,
                  color: currentPage == totalPages
                      ? colorScheme.primary
                      : colorScheme.secondary,
                ),
                child: Center(
                  child: Icon(
                    Icons.chevron_right,
                    size: 34.px,
                    color: currentPage == totalPages
                        ? colorScheme.primary
                        : colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
