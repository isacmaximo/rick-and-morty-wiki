import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rick_and_morty_wiki/core/shared/base/base_page.dart';
import 'package:rick_and_morty_wiki/modules/home/controllers/home_controller.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/character_card.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/home_header.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/pageable_bottom.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = Modular.get<HomeController>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Observer(
        builder: (context) => Center(
          child: Column(
            children: [
              HomeHeader(),
              SearchInput(
                controller: _controller.searchController,
                onChanged: _controller.onSearchChanged,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _controller.scrollController,
                  child: Column(
                    children: [
                      if (_controller.characters != null)
                        Center(
                          child: Column(
                            children: _controller.characters!.results!.map((
                              character,
                            ) {
                              return CharacterCard(
                                character: character,
                                goToDetailsPage: _controller.goToDetaislsPage,
                              );
                            }).toList(),
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              if (_controller.characters != null)
                PageableBottom(
                  onNext: _controller.nextPage,
                  onPrevious: _controller.previousPage,
                  currentPage: _controller.currentPage,
                  totalPages: _controller.characters?.info?.pages ?? 0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
