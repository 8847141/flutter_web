import 'package:flutter/material.dart';

const Color kMainColor = Color(0xff3553f1);

const EdgeInsetsGeometry kChecboxesPadding =
    EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0);

const OutlineInputBorder kTextFormBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(
    color: kMainColor,
    width: 2,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(14.0),
  ),
);

const InputDecoration kTextFormInputDecoration = InputDecoration(
  focusedBorder: kTextFormBorderStyle,
  enabledBorder: kTextFormBorderStyle,
  errorBorder: kTextFormBorderStyle,
  disabledBorder: kTextFormBorderStyle,
  border: kTextFormBorderStyle,
  filled: true,
  fillColor: Colors.white,
);

final Decoration kDropdownButtonDecoration = BoxDecoration(
  border: Border.all(
    color: kMainColor,
    width: 2.0,
  ),
  borderRadius: BorderRadius.circular(14.0),
);

final Decoration kHideDropdownButtonDecoration = BoxDecoration(
  border: Border.all(
    color: Colors.white,
    width: 2.0,
  ),
  borderRadius: BorderRadius.circular(14.0),
);

const TextStyle kMainTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
);
