import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_wiki/core/shared/global_loading/loading_controller.dart';
import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/data/models/pageable_charachter.dart';
import 'package:rick_and_morty_wiki/modules/home/use_cases/character/get_characters_use_case.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final GetCharactersUseCase _getCharactersUseCase;
  final LoadingController _loadingController;

  HomeControllerBase(this._getCharactersUseCase, this._loadingController) {
    getCharacters();
  }

  TextEditingController searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @action
  Future<void> onSearchChanged(String value) async {
    currentPage = 1;
    await getCharacters(name: value);
  }

  @observable
  PageableCharachter? characters;

  @observable
  int currentPage = 1;

  @action
  Future<void> nextPage() async {
    if (characters?.info?.next != null) {
      currentPage++;
      await getCharacters(page: currentPage);
    }
  }

  @action
  Future<void> previousPage() async {
    if (characters?.info?.prev != null) {
      currentPage--;
      await getCharacters(page: currentPage);
    }
  }

  @action
  Future<void> getCharacters({int? page, String? name}) async {
    try {
      _loadingController.startLoading();
      characters = await _getCharactersUseCase.execute(
        page: currentPage,
        name: name,
      );
      _loadingController.stopLoading();
    } on FlutterError catch (e) {
      _loadingController.stopLoading();
      EasyLoading.showError(e.message);
    }
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Future<void> goToDetaislsPage(Character character) async {
    try {
      _loadingController.stopLoading();
      await Modular.to.pushNamed('/details', arguments: character);
    } on FlutterError catch (e) {
      _loadingController.stopLoading();
      EasyLoading.showError(e.message);
    }
  }
}
