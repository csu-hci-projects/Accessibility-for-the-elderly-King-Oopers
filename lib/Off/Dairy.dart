import 'package:flutter/material.dart';
import 'package:king_oopers_app/Off/CartOff.dart';
import 'package:king_oopers_app/Off/NavigationBarOff.dart';

import '../On/CartOn.dart';
import './CardsWidgetOff.dart';

class DairyState extends StatefulWidget {
  String text = "";

  @override
  _Dairy createState() => _Dairy();
}

class _Dairy extends State<DairyState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black45,),
              onPressed: () {
                Navigator.pop(context);
              });
        }),
        title: const Text("Dairy", style: TextStyle(color: Colors.black45),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child:
            IconButton(
              icon: const Icon(Icons.shopping_cart, size: 23, color: Colors.black54,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartOff()));
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardsWidgetOff('assets/images/milk.png', 'Borden - 2% milk'),
          CardsWidgetOff('assets/images/LacotoseFree.PNG', 'Fa!rlife - Lactose Free Milk'),
          CardsWidgetOff('assets/images/chedarCheese.PNG', 'Kroger - Mild Cheddar Cheese - Block'),
          CardsWidgetOff('assets/images/ProvoloneCheese.PNG', 'Sargento - Provolone Cheese - Slices'),
          CardsWidgetOff('assets/images/sourCream.PNG', 'Daisy - Sour Cream'),
          CardsWidgetOff('assets/images/blueYogurt.PNG', 'Chobani - Greek Yogurt - Blueberry'),
          CardsWidgetOff('assets/images/strawYogurt.PNG', 'Chobani - Greek Yogurt - Strawberry'),
        ],
      ),
        /*
        BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,), label: "", backgroundColor: Colors.black54),
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "", backgroundColor: Colors.black54)]
        )
        */
    );
  }
}
