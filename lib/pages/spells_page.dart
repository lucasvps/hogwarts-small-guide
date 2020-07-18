import 'package:flutter/material.dart';

class SpellsPage extends StatelessWidget {
  const SpellsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff212121),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "The Spells Page in Under Construction",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
