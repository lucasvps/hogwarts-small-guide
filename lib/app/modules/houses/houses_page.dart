import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/models/houses_model.dart';
import 'package:harry_potter_app/app/modules/housesDetail/house_details_page.dart';

class HousesPage extends StatefulWidget {
  HousesPage({Key key}) : super(key: key);

  @override
  _HousesPageState createState() => _HousesPageState();
}

class _HousesPageState extends State<HousesPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        //width: constraints.maxHeight,
        height: constraints.maxHeight * 1,
        color: Color(0xff212121),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: constraints.maxWidth / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                            tag: 'Gryffindor',
                            child: Card(
                              //color: Colors.black,
                              elevation: 12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                'lib/assets/images/gryffindorBackGround.png',
                                width: constraints.maxWidth * 0.4,
                                height: constraints.maxHeight * 0.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        elevation: 5,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HouseDetailsPage(
                                      housesModel: HousesModel(
                                          name: 'Gryffindor',
                                          mascot: "Lion",
                                          houseGhost: 'Nearly Headless Nick',
                                          headOfHouse: "Minerva McGonagall",
                                          founder: "Goderic Gryffindor",
                                          image:
                                              'lib/assets/images/gryffindorBackGround.png'),
                                    )),
                          );
                        },
                        child: Text('View More', style: GoogleFonts.chewy(fontSize: 18),),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: constraints.maxWidth / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                            tag: 'Slytherin',
                            child: Card(
                              elevation: 12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                'lib/assets/images/slytherinhousebackground.png',
                                width: constraints.maxWidth * 0.4,
                                height: constraints.maxHeight * 0.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        color: Colors.green[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        elevation: 5,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HouseDetailsPage(
                                      housesModel: HousesModel(
                                          name: 'Slytherin',
                                          mascot: "Serpent",
                                          houseGhost: 'The Bloody Baron',
                                          headOfHouse: "Severus Snape",
                                          founder: "Salazar Slytherin",
                                          image:
                                              'lib/assets/images/slytherinhousebackground.png'),
                                    )),
                          );
                        },
                        child: Text('View More', style: GoogleFonts.chewy(fontSize: 18)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: constraints.maxWidth / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                            tag: 'Hufflepuff',
                            child: Card(
                              elevation: 12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                'lib/assets/images/hufflebackground.png',
                                width: constraints.maxWidth * 0.4,
                                height: constraints.maxHeight * 0.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        elevation: 5,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HouseDetailsPage(
                                      housesModel: HousesModel(
                                          name: 'Hufflepuff',
                                          mascot: "Badger",
                                          houseGhost: 'The Fat Friar',
                                          headOfHouse: "Pomona Sprout",
                                          founder: "Helga Hufflepuff",
                                          image:
                                              'lib/assets/images/hufflebackground.png'),
                                    )),
                          );
                        },
                        child: Text('View More', style: GoogleFonts.chewy(fontSize: 18)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: constraints.maxWidth / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                            tag: 'Ravenclaw',
                            child: Card(
                              elevation: 12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                'lib/assets/images/ravenclawbackground.png',
                                width: constraints.maxWidth * 0.4,
                                height: constraints.maxHeight * 0.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        elevation: 5,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HouseDetailsPage(
                                      housesModel: HousesModel(
                                          name: 'Ravenclaw',
                                          mascot: "Eagle",
                                          houseGhost: 'The Grey Lady',
                                          headOfHouse: "Fillius Flitwick",
                                          founder: "Rowena Ravenclaw",
                                          image:
                                              'lib/assets/images/ravenclawbackground.png'),
                                    )),
                          );
                        },
                        child: Text('View More', style: GoogleFonts.chewy(fontSize: 18)),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
