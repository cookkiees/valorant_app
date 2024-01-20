import 'package:flutter/material.dart';

extension AppTextExtensions on String {
  Widget asLabelButton({Color? color}) => Text(
        this,
        style: TextStyle(
          fontSize: 14,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      );
  Widget asTitleBig({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: TextStyle(
          fontSize: 20,
          color: color,
          fontWeight: fontWeight ?? FontWeight.w600,
        ),
      );

  Widget asTitleNormal({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: TextStyle(
          fontSize: 18,
          color: color,
          fontWeight: fontWeight ?? FontWeight.w300,
        ),
      );

  Widget asTitleSmall({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: TextStyle(
          fontSize: 16,
          color: color,
          fontWeight: fontWeight ?? FontWeight.w300,
        ),
      );

  Widget asSubtitleBig({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: TextStyle(
          fontSize: 14,
          color: color,
          fontWeight: fontWeight ?? FontWeight.w300,
        ),
      );

  Widget asSubtitleNormal({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: TextStyle(
          fontSize: 12,
          color: color,
          fontWeight: fontWeight ?? FontWeight.w300,
        ),
      );

  Widget asSubtitleSmall({Color? color, FontWeight? fontWeight}) => Text(
        this,
        style: TextStyle(
          fontSize: 11,
          color: color,
          fontWeight: fontWeight ?? FontWeight.w300,
        ),
      );
}
