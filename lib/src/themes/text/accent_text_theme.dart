import 'package:flutter/material.dart';

class AccentTextTheme extends TextTheme {
  AccentTextTheme()
      : super(
          //available just 13 themes on TextTheme
          title: TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.normal,
            color: Colors.red,
          ),
        );
}
