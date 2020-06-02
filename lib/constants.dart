import 'package:flutter/material.dart';

//* Sizes

const double questionsWidth = 400.0;

//* Colors
const Color mainColor = Color(0xff3553f1);

const Color hideColor = Colors.black45;

//* Borders
const OutlineInputBorder textFormBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(
    color: mainColor,
    width: 2,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(14.0),
  ),
);

//* Paddings
const EdgeInsetsGeometry checboxesPadding =
    EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0);

//* Indents
const SizedBox answerIndent = SizedBox(height: 4.0);

const SizedBox questionIndent = SizedBox(height: 8.0);

//* Decorations
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

//* Text styles
const TextStyle mainTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
);

const TextStyle secondaryTextStyle = TextStyle(
  fontSize: 16.0,
  color: mainColor,
  fontWeight: FontWeight.w600,
);
