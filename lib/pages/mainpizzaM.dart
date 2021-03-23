import 'package:flutter/material.dart';
import 'package:minors1/models/topping.dart';

class mainpizzaM extends StatefulWidget {
  @override
  _mainpizzaMState createState() => _mainpizzaMState();
}

class _mainpizzaMState extends State<mainpizzaM> {
  List<toppings> Toppings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/GWP.jpg'),
          fit: BoxFit.fill,
        )),
        child: Row(
          children: [
            Container(
              width: 800,
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pizza/woddenboard2.jpg'),
                )
              ),
            ),
           Container(
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: Topping().Toppings.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 8, childAspectRatio: 2),
                          itemBuilder: (context, i) {
                      final grandtoppings = Topping().Toppings[i];
                      return Column(
                        children: [
                          FlatButton(onPressed: () {},
                          child: Image.asset(grandtoppings.image)
                          ),
                          Text(grandtoppings.topping),
                        ],
                      );
                          },
                      ),
                     ),
                ],
            ),
      ),
    );

  }
}
