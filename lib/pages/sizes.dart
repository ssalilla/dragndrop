import 'package:flutter/material.dart';
import 'package:minors1/models/sizes.dart';

class sizes extends StatefulWidget {
  @override
  _sizesState createState() => _sizesState();
}

class _sizesState extends State<sizes> {
  List<sizes> Size;
  int SelectedIndex;


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
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(items.image),
                            iconSize: 150,
                          ),
                      Text(items.size, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),),
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
