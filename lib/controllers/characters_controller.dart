import 'package:harry_potter_app/models/character_model.dart';
import 'package:harry_potter_app/repositories/characters_repository.dart';

class CharacterController {

  final CharacterRepository repository;

  CharacterController(this.repository);


  Future<List<CharacterModel>> getChars() async {
    return await repository.getCharacters();
  }



}