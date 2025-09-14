import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/shared/card/default_card.dart';
import 'package:rick_and_morty_wiki/core/themes/text_styles.dart';
import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/image_card.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/status_flag.dart';
import 'package:rick_and_morty_wiki/utils/contants/sizes.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final Future<void> Function(Character character) goToDetailsPage;
  const CharacterCard({
    super.key,
    required this.character,
    required this.goToDetailsPage,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () async {
        await goToDetailsPage(character);
      },
      child: DefaultCard(
        width: defaultWithSize,
        backgroundColor: colorScheme.onSecondary.withAlpha(15),
        padding: EdgeInsets.all(8.w),
        margin: EdgeInsets.symmetric(vertical: 12.px),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageCard(imageUrl: character.image),
            SizedBox(height: 16.px),
            StatusFlag(status: character.status ?? 'Unknown'),
            SizedBox(height: 8.px),
            Text(
              character.name ?? 'Unknown',
              textAlign: TextAlign.center,
              style: AppTextStyles.cardTitle,
            ),
            SizedBox(height: 8.px),
            Text(
              'First seen in episode',
              style: AppTextStyles.cardValueInfoText,
            ),
            Text(
              character.origin?.name ?? 'Unknown',
              textAlign: TextAlign.center,
              style: AppTextStyles.cardTitleInfoText,
            ),
            SizedBox(height: 8.px),
            Text('Last known location', style: AppTextStyles.cardValueInfoText),
            Text(
              character.location?.name ?? 'Unknown',
              textAlign: TextAlign.center,
              style: AppTextStyles.cardTitleInfoText,
            ),
          ],
        ),
      ),
    );
  }
}
