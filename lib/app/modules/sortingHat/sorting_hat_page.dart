import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/app/modules/sortingHat/sorting_hat_controller.dart';
import 'package:harry_potter_app/repositories/sorting_hat_repository.dart';

class SortingHatPage extends StatefulWidget {
  const SortingHatPage({Key key}) : super(key: key);

  @override
  _SortingHatPageState createState() => _SortingHatPageState();
}

bool clicked = false;


SortingHatRepository repository = SortingHatRepository();
SortingHatController controller = SortingHatController(repository);

class _SortingHatPageState extends State<SortingHatPage> {
  @override
  void initState() {
    super.initState();
    clicked = false;
    
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Container(
          height: constraints.maxHeight * 1,
          width: constraints.maxWidth,
          color: Color(0xff212121),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    clicked = true;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'lib/assets/images/sortinghat.png',
                      width: constraints.maxWidth * 0.6,
                      height: constraints.maxHeight * 0.4,
                    ),
                    Flexible(
                      child: Text(
                        "Where to put you?",
                        style: GoogleFonts.chewy(
                            fontSize: 22, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.08,
              ),
              FutureBuilder(
                future: clicked ? controller.sortedHat() : null,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  
                  switch (snapshot.connectionState) {
                    case ConnectionState.active:
                    case ConnectionState.waiting:
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                      break;
                    case ConnectionState.none:
                      return Flexible(
                        child: Text(
                          "Click on the Hat to Know your House!",
                          style: GoogleFonts.chewy(
                              fontSize: 22, color: Colors.white),
                        ),
                      );
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
                          
                          child: Image.asset(
                            
                            snapshot.data == 'Gryffindor'
                                ? 'lib/assets/images/gryffindorBackGround.png'
                                : snapshot.data == 'Slytherin'
                                    ? 'lib/assets/images/slytherinhousebackground.png'
                                    : snapshot.data == 'Ravenclaw'
                                        ? 'lib/assets/images/ravenclawbackground.png'
                                        : snapshot.data == 'Hufflepuff'
                                            ? 'lib/assets/images/hufflebackground.png'
                                            : "",
                            width: constraints.maxWidth * 0.6,
                            height: constraints.maxHeight * 0.4,
                          ),
                        );
                      }
                      break;
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
