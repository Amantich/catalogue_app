import 'package:flutter/material.dart';

class AppTheme{

  static List<ThemeData> themes=[
    ThemeData(
      primaryColor: Colors.deepOrange,
    appBarTheme: AppBarTheme(color: Colors.deepOrange),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 22),
      bodyMedium: TextStyle(
        fontSize: 20
      ),
      bodySmall: TextStyle(
        fontSize: 18
      )
    )
    ),
    ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(color: Colors.blue),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 22),
            bodyMedium: TextStyle(
                fontSize: 20
            ),
            bodySmall: TextStyle(
                fontSize: 18
            )
        )
    )
  ];


}