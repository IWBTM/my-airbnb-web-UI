import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_textfield.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';

import '../../styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 현재 화면의 가로 크기를 가져오는 법
    double screenWidth = MediaQuery.of(context).size.width;
    return Align(
      // 정렬 위젯
      // -1.0 ~ 1.0 까지 가로 범위에서 자식의 위치를 정렬 하는데 0.1은 전체 화면에서 5%이다.
      // 안에 ㅎ패딩이 들어있기 때문에 살짝 떨어져잇음
      alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
      child: Container(
        width: 420,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(gap_l),
            child: Column(
              children: [
                _buildFormTitle(),
                _buildFormField(),
                _buildFormSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildFormTitle() {
    return Column(
      children: [
        Text(
          '에이비엔비에서 숙소를 검색하세요.',
          style: h4(),
        ),
        SizedBox(height: gap_xs),
        Text(
          '혼자 하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 공간전체 숙소까지, 에어비앤비에 다 있습니다. ',
          style: body1(),
        ),
        SizedBox(
          height: gap_m,
        ),
      ],
    );
  }

  _buildFormField() {
    return Column(
      children: [
        CommonFormTextField(prefixText: '위치', hintText: '근처 추천 장소'),
        SizedBox(
          height: gap_s,
        ),
        Row(
          children: [
            Expanded(
                child:
                    CommonFormTextField(prefixText: '체크인', hintText: '날짜 입력')),
            SizedBox(
              width: gap_xs,
            ),
            Expanded(
                child: CommonFormTextField(
                    prefixText: '체크 아웃', hintText: '날짜 입력')),
          ],
        ),
        SizedBox(
          height: gap_xs,
        ),
        Row(
          children: [
            Expanded(
              child: CommonFormTextField(prefixText: '성인', hintText: '2'),
            ),
            SizedBox(
              width: gap_xs,
            ),
            Expanded(
              child: CommonFormTextField(prefixText: '어린이', hintText: '0'),
            ),
          ],
        ),
        SizedBox(
          height: gap_xs,
        ),
      ],
    );
  }

  _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        child: Text('검색'),
        onPressed: () {
          // Post --> 데이터 서버 전송
          print('서브밋 클릭됨');
        },
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
