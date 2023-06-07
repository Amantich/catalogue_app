import 'package:catalogue_app/pages/HomePage.page.dart';
import 'package:catalogue_app/pages/product.page.dart';
import 'package:catalogue_app/pages/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: AppTheme.themes[0],
      routes: {
        "/home":(context)=>HomePage(),
        "/products":(context)=>ProductPage(),
      },
      initialRoute: "/home",
    );
  }
}
