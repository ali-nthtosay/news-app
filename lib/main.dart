import 'package:flutter/material.dart';
import 'package:news_api_app/ArticlePages/article_page.dart';
import 'package:news_api_app/Config/themes.dart';
import 'package:news_api_app/Pages/HomePage.dart';
import 'package:news_api_app/Pages/news_teil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
