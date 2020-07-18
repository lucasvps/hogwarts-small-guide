import 'package:flutter/material.dart';
import 'package:harry_potter_app/controllers/characters_controller.dart';
import 'package:harry_potter_app/models/character_model.dart';
import 'package:harry_potter_app/pages/character_details_page.dart';
import 'package:harry_potter_app/repositories/characters_repository.dart';

class CharactersPage extends StatefulWidget {
  CharactersPage({Key key}) : super(key: key);

  @override
  _CharactersPageState createState() => _CharactersPageState();
}

CharacterRepository repository = CharacterRepository();
CharacterController controller = CharacterController(repository);

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Container(
        child: FutureBuilder(
          future: controller.repository.getCharacters(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
                break;
              case ConnectionState.none:
                return Text("No connection has been made");
                break;
              case ConnectionState.done:
                if (snapshot.hasError) {
                  print(snapshot.error);
                  return Text(snapshot.error.toString());
                }
                if (!snapshot.hasData) {
                  return Text("No data");
                } else {
                  return Center(
                    child: listView(snapshot.data),
                  );
                }
                break;
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget listView(List<CharacterModel> chars) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: chars.length,
      addAutomaticKeepAlives: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return Hero(
          tag: chars[index].image,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CharacterDetailsPage(
                          model: chars[index],
                        )),
              );
            },
            child: LayoutBuilder(builder: (context, constraints) {
              return Card(
                elevation: 20,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(chars[index].image))),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
