import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_wiki/data/models/pageable_charachter.dart';
import 'package:rick_and_morty_wiki/modules/home/use_cases/character/get_characters_use_case.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final GetCharactersUseCase _getCharactersUseCase;

  HomeControllerBase(this._getCharactersUseCase) {
    getCharacters();
  }

  @observable
  PageableCharachter? characters;

  @action
  Future<void> getCharacters({int? page, String? name}) async {
    try {
      characters = await _getCharactersUseCase.execute(
        page: page ?? 0,
        name: name,
      );
    } on FlutterError catch (e) {
      EasyLoading.showError(e.message);
    }
  }
}
