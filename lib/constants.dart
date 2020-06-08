import 'package:flutter/material.dart';

//* Sizes

const double questionsWidth = 288.0; //MediaQuery.of(context).size.width - 32,

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
const SizedBox answerIndent = SizedBox(
  height: 4.0,
  width: 4.0,
);

const SizedBox questionIndent = SizedBox(
  height: 8.0,
  width: 8.0,
);

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

final Decoration answerDecoration = BoxDecoration(
  border: Border.all(
    color: mainColor,
    width: 2.0,
  ),
  borderRadius: BorderRadius.circular(14.0),
);

const Decoration hideDecoration = BoxDecoration();

//* Text styles

const TextStyle h1 = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const TextStyle questionTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
);

const TextStyle secondaryTextStyle = TextStyle(
  fontSize: 16.0,
  color: mainColor,
  fontWeight: FontWeight.w600,
);
