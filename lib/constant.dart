import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

const darkblue = Color(0xFF0f1a3e);
const lightblue = Color(0xFFffffff);
const bluegradient = Color(0xFF00448a);
const color4 = Color(0xFF9bb5cf);
// ignore: constant_identifier_names
const color5 = Color(0xFFe7eef6);
// ignore: constant_identifier_names
const color6 = Color(0xFF19488b);

//TextFormField Decoration
InputDecoration? customDecoration = InputDecoration(
    fillColor: color5,
    filled: true,
    focusColor: color6,
    contentPadding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 10.sp),
    hintText: " Create password",
    hintStyle: TextStyle(color: color6, fontSize: 17),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.sp)),
      borderSide:BorderSide(color: Colors.red,),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color:color4, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(10.sp),
        )),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10.sp))),
    border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10.sp))),
    prefixIcon: Icon(
      Icons.lock,
      color: color6,size: 15.sp,
    ));

InputDecoration customDecor({String? text , Icon? preFixIcon,Color? color, contendpadding}) {
  return customDecoration! .copyWith(hintText: text, prefixIcon:preFixIcon,fillColor: color5,);
}
