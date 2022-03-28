import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Off/CardsWidgetOff.dart';

class DairyState extends StatefulWidget {
  String text = "";

  @override
  _DairyOn createState() => _DairyOn();
}

class _DairyOn extends State<DairyState> {
  Widget _background() => Container(
    //background
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)),
  );

  @override
  Widget build(BuildContext context) {
    const _cartHeight = 100.0;
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                });
          }),
          title: const Text("Dairy"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ]
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          cardsWidgetOff('assets/images/milk.png', 'Borden - 2% milk'),
          cardsWidgetOff('assets/images/LacotoseFree.PNG', 'Fa!rlife - Lactose Free Milk'),
          cardsWidgetOff('assets/images/chedarCheese.PNG', 'Kroger - Mild Cheddar Cheese - Block'),
          cardsWidgetOff('assets/images/ProvoloneCheese.PNG', 'Sargento - Provolone Cheese - Slices'),
          cardsWidgetOff('assets/images/sourCream.PNG', 'Daisy - Sour Cream'),
          cardsWidgetOff('assets/images/blueYogurt.PNG', 'Chobani - Greek Yogurt - Blueberry'),
          cardsWidgetOff('assets/images/strawYogurt.PNG', 'Chobani - Greek Yogurt - Strawberry'),
        ],
      ),
    );
  }
}
