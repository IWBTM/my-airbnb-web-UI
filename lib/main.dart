import 'package:flutter/material.dart';
import 'package:flutter_airbnb/pages/home_page.dart';

void main() {
  runApp(MyAPp());
}

class MyAPp extends StatelessWidget {
  const MyAPp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
