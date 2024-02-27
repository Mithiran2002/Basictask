import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

const darkblue = Color(0xFF0f1a3e);
const lightblue = Color(0xFFffffff);
const bluegradient = Color(0xFF00448a);
const color4 = Color(0xFF9bb5cf);
// ignore: constant_identifier_names
const Color5 = Color(0xFFe7eef6);
// ignore: constant_identifier_names
const Color6 = Color(0xFF19488b);

//TextFormField Decoration
InputDecoration? customDecoration = InputDecoration(
  fillColor: Color5,
  filled: true,
    focusColor: Color6,
    contentPadding: EdgeInsets.symmetric(horizontal: 2.sp, vertical: 10.sp),
    hintText: " Create password",
    hintStyle: TextStyle(color: Color6, fontSize: 17),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(18.sp)),
      borderSide:BorderSide(color: Colors.red,),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color:color4, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(20.sp),
        )),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(18.sp))),
    border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(18.sp))),
    prefixIcon: Icon(
      Icons.lock,
      color: Color6,
    ));

InputDecoration customDecor({String? text , Icon? preFixIcon,Color? color, contendpadding}) {
  return customDecoration!
      .copyWith(hintText: text, prefixIcon:preFixIcon,fillColor: Color5,contentPadding:contendpadding );
}
