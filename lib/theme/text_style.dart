import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//heading
TextStyle heading4style({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 27.sp : 27,
    fontWeight: FontWeight.w700,
    fontFamily: 'Main',
    color: color,
    height: height
  );
}

TextStyle heading5style({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 22.sp : 22,
    fontWeight: FontWeight.w600,
    fontFamily: 'Main',
    color: color,
    height: height
  );
}

TextStyle heading7style({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 18.sp : 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'Main',
    color: color
  );
}

//body

TextStyle body2style({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 17.sp : 17,
    fontWeight: FontWeight.w600,
    fontFamily: 'NotoSansKR',
    color: color
  );
}

TextStyle body3style({bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 14.sp : 14,
    fontWeight: FontWeight.w300,
    fontFamily: 'NotoSansKR',
    color: color
  );
}

//button
TextStyle button2style(
    {bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 14.sp : 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Noto Sans KR',
    color: color
  );
}

//subtitle
TextStyle subtitle1style(
    {bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 16.sp : 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'KoPubWorld',
    color: color
  );
}

TextStyle subtitle2style(
    {bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 13.sp : 13,
    fontWeight: FontWeight.normal,
    fontFamily: 'Roboto',
    color: color
  );
}

TextStyle subtitle3style(
    {bool responsible = false, double? height, Color? color}) {
  return TextStyle(
    fontSize: responsible ? 11.sp : 11,
    fontWeight: FontWeight.w300,
    fontFamily: 'Main',
    color: color
  );
}


