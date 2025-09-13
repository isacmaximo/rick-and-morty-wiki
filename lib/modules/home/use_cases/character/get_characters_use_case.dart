import 'package:rick_and_morty_wiki/data/models/pageable_charachter.dart';
import 'package:rick_and_morty_wiki/data/repositories/character_repository.dart';

class GetCharactersUseCase {
  final CharacterRepository _repository;

  GetCharactersUseCase(this._repository);

  Future<PageableCharachter> execute({int? page, String? name}) {
    return _repository.getCharacters(page: page, name: name);
  }
}
