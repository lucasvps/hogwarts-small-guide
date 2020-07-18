import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/models/houses_model.dart';

class HouseDetailsPage extends StatefulWidget {
  HouseDetailsPage({Key key, this.housesModel}) : super(key: key);
  final HousesModel housesModel;

  @override
  _HouseDetailsPageState createState() => _HouseDetailsPageState();
}

class _HouseDetailsPageState extends State<HouseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Text(widget.housesModel.name),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Hero(
                  tag: widget.housesModel.name,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        //color: Colors.black,
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset(
                          widget.housesModel.image,
                          width: constraints.maxWidth * 0.55,
                          height: constraints.maxHeight * 0.3,
                        ),
                      ),
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
                            widget.housesModel.name + " Informations",
                            style: GoogleFonts.chewy(fontSize: 26),
                          )),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.info),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'MASCOT : ' + widget.housesModel.mascot,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.chewy(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.info),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'HEAD OF HOUSE : ' +
                                          widget.housesModel.headOfHouse,
                                      style: GoogleFonts.chewy(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.info),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'HOUSE GHOST : ' +
                                          widget.housesModel.houseGhost,
                                      style: GoogleFonts.chewy(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.info),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'FOUNDER : ' + widget.housesModel.founder,
                                      style: GoogleFonts.chewy(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
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
