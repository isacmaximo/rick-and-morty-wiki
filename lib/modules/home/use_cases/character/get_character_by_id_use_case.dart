import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/data/repositories/character_repository.dart';

class GetCharacterByIdUseCase {
  final CharacterRepository _repository;

  GetCharacterByIdUseCase(this._repository);

  Future<Character> execute(int id) {
    return _repository.getCharacterById(id);
  }
}
