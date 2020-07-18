import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/models/character_model.dart';

class CharacterDetailsPage extends StatefulWidget {
  CharacterDetailsPage({Key key, this.model}) : super(key: key);
  final CharacterModel model;

  @override
  _CharacterDetailsPageState createState() => _CharacterDetailsPageState();
}

class _CharacterDetailsPageState extends State<CharacterDetailsPage> {
  var appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(widget.model.name, style : GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold)),
            widget.model.house == "Gryffindor"
                ? Image.asset(
                    'lib/assets/images/gryffindorBackGround.png',
                    height: appBar.preferredSize.height,
                  )
                : widget.model.house == "Slytherin"
                    ? Image.asset(
                        'lib/assets/images/slytherinhousebackground.png',
                        height: appBar.preferredSize.height,
                      )
                    : widget.model.house == "Hufflepuff"
                        ? Image.asset(
                            'lib/assets/images/hufflebackground.png',
                            height: appBar.preferredSize.height,
                          )
                        : widget.model.house == "Ravenclaw"
                            ? Image.asset(
                                'lib/assets/images/ravenclawbackground.png',
                                height: appBar.preferredSize.height,
                              )
                            : SizedBox()
          ],
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Hero(
                  tag: widget.model.image,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                          //color: Colors.black,
                          elevation: 12,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: Container(
                            child: CircleAvatar(
                              radius: 100,
                              backgroundImage: NetworkImage(widget.model.image),
                            ),
                            //width: constraints.maxWidth * 0.55,
                            //height: constraints.maxHeight * 0.3,
                          )),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "Played By : " + widget.model.actor,
                        style: GoogleFonts.chewy(fontSize: 26),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    child: Card(
                      elevation: 20,
                      child: ExpansionTile(
                        // leading: Icon(Icons.),
                        title: SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Center(
                              child: Text(
                            "Personal Informations",
                            style: GoogleFonts.chewy(fontSize: 26),
                          )),
                        ),
                        children: <Widget>[
                          widget.model.species.isNotEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.info),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Species : ' + widget.model.species,
                                            textAlign: TextAlign.start,
                                            style:
                                                GoogleFonts.chewy(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          widget.model.ancestry.isNotEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.info),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Ancestry : ' +
                                                widget.model.ancestry,
                                            style:
                                                GoogleFonts.chewy(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          widget.model.patronus.isNotEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.info),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Patronus : ' +
                                                widget.model.patronus,
                                            style:
                                                GoogleFonts.chewy(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          widget.model.dateOfBirth.isNotEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.info),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            widget.model.dateOfBirth != null
                                                ? 'Date of Birth : ' +
                                                    widget.model.dateOfBirth
                                                : "Unknow",
                                            style:
                                                GoogleFonts.chewy(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          widget.model.alive != null
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.info),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Is Alive ?  ' +
                                                widget.model.alive.toString(),
                                            style:
                                                GoogleFonts.chewy(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
