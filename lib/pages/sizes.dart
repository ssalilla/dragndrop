import 'package:flutter/material.dart';
import 'package:minors1/models/sizes.dart';
import 'package:minors1/pages/mainpizzaL.dart';
import 'package:minors1/pages/mainpizzaM.dart';

class sizes extends StatefulWidget {
  @override
  _sizesState createState() => _sizesState();
}

class _sizesState extends State<sizes> {
  List<sizes> Size;


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
            image: AssetImage('assets/BGwithLogo.jpg'),
            fit: BoxFit.fill,
          )
        ),
        child: Row(
          children: [
            SizedBox(width: 1050),
            Container(
              height: 450,
              width: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: Sizes().Size.length,
                  itemBuilder: (context, i) {
                  final items = Sizes().Size[i];
                  return
                      Column(
                        children: [
                          SizedBox(height: 100,),
                          FlatButton(
                          child: Image.asset(items.image),
                          onPressed: () {
                            if (items.id == 1)
                            {Navigator.push(context, MaterialPageRoute(builder: (context) => mainpizzaM()
                            ));}
                            else if (items.id == 2 )
                            {Navigator.push(context, MaterialPageRoute(builder: (context) => mainpizzaL()
                            ));}
                          Text(items.size, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),);
                          }
                          ),
                        ],
                    ); },
                  ),
            ),
          ],
        ),

            ),
      );
  }
}
