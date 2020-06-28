import 'package:flutter/material.dart';

const kGridContainerDecoration =
    BoxDecoration(color: Color(0xffDAC4B8), boxShadow: [
  BoxShadow(
    color: Colors.black,
//    spreadRadius: 5,
    blurRadius: 5,
    offset: Offset(0, 5),
  )
]);

const kGridGadgetContainer = BoxDecoration(
    shape: BoxShape.circle,
    color: Color(0xffDAC4B8),
    boxShadow: [
      BoxShadow(color: Colors.black, spreadRadius: 3, offset: Offset(3, 1.5))
    ]);
