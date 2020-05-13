import 'package:flutter/material.dart';

const Color kMainColor = Color(0xff3553f1);

const EdgeInsetsGeometry kChecboxesPadding = EdgeInsets.fromLTRB(12, 0, 12, 0);

const OutlineInputBorder kTextFormBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: kMainColor),
  borderRadius: BorderRadius.all(
    Radius.circular(15),
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
