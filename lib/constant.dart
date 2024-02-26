import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const darkblue = Color(0xFF0f1a3e);
const lightblue = Color(0xFFffffff);
const bluegradient = Color(0xFF00448a);
const color4 = Color(0xFF9bb5cf);
// ignore: constant_identifier_names
const Color5 = Color(0xFFe7eef6);
// ignore: constant_identifier_names
const Color6 = Color(0xFF19488b);


//TextFormField Decoration
InputDecoration? customDecoration = const InputDecoration(
    fillColor: color4,
    // border: OutlineInputBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(10.0.sp))),

    hintText: "Full Name",
    hintStyle: TextStyle(color: Color6, fontSize: 17),
    border: InputBorder.none,
    prefixIcon: Icon(
      Icons.person,
      color: Color6,
    ));
