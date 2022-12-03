import 'package:flutter/material.dart';

// 기본 값을 지정해 주지 않으면 블랙으로
TextStyle h4({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle h5({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subTitle1({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subTitle2({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle overLine({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle body1({Color mColor = Colors.black}) {
  return TextStyle(fontSize: 16, color: mColor);
}