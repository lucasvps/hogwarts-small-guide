import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/app/modules/characters/characters_page.dart';
import 'package:harry_potter_app/app/modules/sortingHat/sorting_hat_page.dart';

import 'app/modules/houses/houses_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabs = [HousesPage(), CharactersPage(), SortingHatPage()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        
        index: currentIndex,
        backgroundColor: Color(0xff212121),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <Widget>[
          Icon(Icons.home),
          Icon(Icons.people),
          Icon(Icons.help),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        //#fec029
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Hogwarts Guide",
                style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: tabs[currentIndex],
    );
  }
}
