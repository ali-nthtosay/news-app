import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(9),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search News ...",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ), // Optional: change icon color
                          fillColor: const Color.fromARGB(31, 243, 239, 239),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Container(height: 50, width: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
