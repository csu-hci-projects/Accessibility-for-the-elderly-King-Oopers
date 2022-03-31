import 'package:flutter/material.dart';
import 'package:king_oopers_app/Off/Dairy.dart';
import 'package:king_oopers_app/Off/NavigationBarOff.dart';

import '../main.dart';

class HomeOff extends StatelessWidget {
  const HomeOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _background() =>
        Container(
          //background
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.redAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        );

    //ADD navigateTo to arguments
    // ignore: non_constant_identifier_names
    Widget _HomeButtons(String text, navigateTo) =>
        Padding(
          padding: const EdgeInsets.fromLTRB(1, 0, 1, 1),
          child: SizedBox(
            width: 215,
            child: ElevatedButton(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 19.0, color: Colors.black45),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => navigateTo));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange)),
          ),
        );

    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back),
                color: Colors.black, iconSize: 20,
              );
            },
          ),
          title: const Text(
            "King Oopers",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            _background(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 10,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/kingOopers.PNG')),
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _HomeButtons("Dairy", DairyState()),
                        _HomeButtons("Meats", null),
                        _HomeButtons("Cereals", null),
                        _HomeButtons("Fruits", null),
                        _HomeButtons("Find Shop", null),
                      ],
                    ))
              ],
            )
          ],
        ),
        bottomNavigationBar: bottomNavigationOff()
            /*
        BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart
                  ),
                  label: "",
                  backgroundColor: Colors.black54),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: "",
                  backgroundColor: Colors.black54)
            ]),
      */
    );
  }
}