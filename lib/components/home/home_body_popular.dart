import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

// 상대 경로
import 'package:flutter_airbnb/styles.dart';

import 'hoem_body_popular_item.dart';

// 절대 경로
// import '.../.../styles.dart';
class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_s),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  _buildPopularTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '한국 숙소에 직접 다녀간 게스트의 후기',
          style: h5(),
        ),
        Text(
          '게스트 후기 2,500,000개 이상, 평균 평점 4.9(5점 만점)',
          style: body1(),
        ),
        const SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  _buildPopularList() {
    // 화면이 작아지면 자동으로 밑으로 떨어지는 위젯
    return Wrap(
      children: [
        HomeBodyPopularItem(
          id: 0,
        ),
        SizedBox(
          width: gap_xs,
        ),
        HomeBodyPopularItem(
          id: 1,
        ),
        SizedBox(
          width: gap_xs,
        ),
        HomeBodyPopularItem(
          id: 2,
        )
      ],
    );
  }
}
