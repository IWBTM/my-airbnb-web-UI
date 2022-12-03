import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

import 'home_body_banner.dart';
import 'home_body_popular.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double bodyWidth = getBodyWidth(context);

    // 센터로 가는 위젯
    return Align(
      child: SizedBox(
        width: bodyWidth, // 화면 70% 차지
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular()
          ],
        ),
      ),
    );
  }
}
