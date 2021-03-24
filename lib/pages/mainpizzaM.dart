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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/GWP.jpg'),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pizza/woddenboard2.jpg'),
                )
              ),
            ),
            Container(
              height: 270,
              width: 800,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: Topping().Toppings.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6, childAspectRatio: 0.5),
                itemBuilder: (context, i) {
                  final grandtoppings = Topping().Toppings[i];
                  return Column(
                    children: [
                      Draggable(
                        child: FlatButton(onPressed: () {},
                            child: Image.asset(grandtoppings.image)
                        ),
                        feedback: Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(grandtoppings.image),
                            ),
                          ),
                        ),
                      ),
                      Text(grandtoppings.topping, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),),
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
