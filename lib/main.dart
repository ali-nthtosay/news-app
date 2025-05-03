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
      home: NewsTeil(
        imageUrl:
            'https://images.unsplash.com/photo-1576158114254-3ba81558b87d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
        title: 'Title 1',
        time: '2h ago',
        author: 'Author 1',
      ),
    );
  }
}
