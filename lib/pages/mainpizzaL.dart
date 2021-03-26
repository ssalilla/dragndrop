import 'package:flutter/material.dart';

class mainpizzaL extends StatefulWidget {
  @override
  _mainpizzaLState createState() => _mainpizzaLState();
}

class _mainpizzaLState extends State<mainpizzaL> {
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
                image: AssetImage('assets/pizza8/board8.png'),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
