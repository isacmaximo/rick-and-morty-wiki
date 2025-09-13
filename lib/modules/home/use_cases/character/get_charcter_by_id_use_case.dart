import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/data/repositories/character_repository.dart';

class GetCharcterByIdUseCase {
  final CharacterRepository _repository;

  GetCharcterByIdUseCase(this._repository);

  Future<Character> execute(int id) {
    return _repository.getCharacterById(id);
  }
}
