import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  // 된다고 했잖아 !!
  HomeBodyPopularItem({Key? key, required this.id}) : super(key: key);
  var id;
  final popularList = [
    'p1.jpeg',
    'p2.jpeg',
    'p3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 50;

    return Container(
      constraints: BoxConstraints(
        // 320 보다 작아지지마
        minWidth: 250,
      ),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo(),
          ],
        ),
      ),
    );
  }

  _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/${popularList[id]}',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
          ],
        ),
        const SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  _buildPopularItemUserInfo() {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/p1.jpeg'),
            ),
            SizedBox(
              width: gap_s,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '경민',
                  style: subTitle1(),
                ),
                Text(
                  '한국',
                  style: subTitle2(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: gap_l,
        )
      ],
    );
  }
}
