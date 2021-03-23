import 'package:flutter/material.dart';
import 'package:minors1/pages/sizes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => sizes(),
    }
  ));
}
