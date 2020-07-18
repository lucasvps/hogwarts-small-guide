import 'package:harry_potter_app/core/custom_dio.dart';
import 'package:harry_potter_app/core/endpoints.dart';
import 'package:harry_potter_app/models/character_model.dart';

class CharacterRepository {

  Future<List<CharacterModel>> getCharacters() async {
    String url = Endpoints.HEROKU_CHARACTERS;

    print(url);

    var dio = CustomDio.withAuthentication().instance;

    return await dio.get(url).then((value){
      List<CharacterModel> list = [];
      
      for (var item in value.data){
        CharacterModel char = CharacterModel.fromJson(item);
        list.add(char);
      }

      return list;
    }).catchError((err){
      print('REPO ERRO : ' + err);
    });
  }




}