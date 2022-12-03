import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

import 'home_header_appbar.dart';
import 'home_header_form.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 꽉 참
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HomeHeaderAppBar(),
            HomeHeaderForm()
          ],
        ),
      ),
    );
  }
}
