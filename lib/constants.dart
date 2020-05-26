import 'package:flutter/material.dart';

const Color mainColor = Color(0xff3553f1);

const EdgeInsetsGeometry kChecboxesPadding =
    EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0);

const OutlineInputBorder textFormBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(
    color: mainColor,
    width: 2,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(14.0),
  ),
);

const InputDecoration textFormInputDecoration = InputDecoration(
  focusedBorder: textFormBorderStyle,
  enabledBorder: textFormBorderStyle,
  errorBorder: textFormBorderStyle,
  disabledBorder: textFormBorderStyle,
  border: textFormBorderStyle,
  filled: true,
  fillColor: Colors.white,
);

final Decoration dropdownButtonDecoration = BoxDecoration(
  border: Border.all(
    color: mainColor,
    width: 2.0,
  ),
  borderRadius: BorderRadius.circular(14.0),
);

final Decoration hideDropdownButtonDecoration = BoxDecoration(
  border: Border.all(
    color: Colors.white,
    width: 2.0,
  ),
  borderRadius: BorderRadius.circular(14.0),
);

const TextStyle mainTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
);
