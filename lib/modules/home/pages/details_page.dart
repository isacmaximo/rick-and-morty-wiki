import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rick_and_morty_wiki/core/shared/base/base_page.dart';
import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/details_header.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/row_info.dart';

class DetailsPage extends StatelessWidget {
  final Character character;

  const DetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Observer(
        builder: (context) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  DetailsHeader(
                    name: character.name,
                    status: character.status,
                    imageUrl: character.image,
                  ),
                  RowInfo(
                    icon: Icons.account_tree_outlined,
                    title: 'Species',
                    value: character.species ?? 'Unknown',
                  ),
                  RowInfo(
                    icon: Icons.transgender,
                    title: 'Gender',
                    value: character.gender ?? 'Unknown',
                  ),
                  RowInfo(
                    icon: Icons.place_outlined,
                    title: 'First seen ep',
                    value: character.origin?.name ?? 'Unknown',
                  ),
                  RowInfo(
                    icon: Icons.my_location_outlined,
                    title: 'Last Seen',
                    value: character.location?.name ?? 'Unknown',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
