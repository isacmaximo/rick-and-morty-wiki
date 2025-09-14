import 'package:flutter_modular/flutter_modular.dart';
import 'package:rick_and_morty_wiki/data/repositories/character_repository.dart';
import 'package:rick_and_morty_wiki/modules/core/core_module.dart';
import 'package:rick_and_morty_wiki/modules/home/controllers/home_controller.dart';
import 'package:rick_and_morty_wiki/modules/home/pages/details_page.dart';
import 'package:rick_and_morty_wiki/modules/home/pages/home_page.dart';
import 'package:rick_and_morty_wiki/modules/home/use_cases/character/get_characters_use_case.dart';
import 'package:rick_and_morty_wiki/modules/home/use_cases/character/get_character_by_id_use_case.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(Injector i) {
    i.addLazySingleton(CharacterRepository.new);
    i.addLazySingleton(GetCharactersUseCase.new);
    i.addLazySingleton(GetCharacterByIdUseCase.new);
    i.addLazySingleton(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => HomePage());
    r.child(
      '/details',
      child: (context) => DetailsPage(character: r.args.data),
    );
    super.routes(r);
  }
}
