import 'package:flutter/material.dart';
import 'package:news_api_app/Pages/card_page.dart';
import 'package:news_api_app/Pages/news_teil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(230, 51, 32, 32),
        title: Text(
          'News App',
          style: TextStyle(color: const Color.fromARGB(255, 234, 242, 243)),
        ),
      ),
      backgroundColor: const Color.fromARGB(68, 21, 21, 22),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Important News',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text('See all', style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            const SizedBox(height: 20),

            // Cards horizontally scrollable
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardPage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1576158114254-3ba81558b87d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
                    tag: 'Tag 1',
                    title: 'Title 1',
                    time: '2h ago',
                    author: 'Author 1',
                  ),
                  CardPage(
                    imageUrl:
                        'https://plus.unsplash.com/premium_photo-1672116453187-3aa64afe04ad?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
                    tag: 'Tag 2',
                    title: 'Title 2',
                    time: '5h ago',
                    author: 'Author 2',
                  ),
                  CardPage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1595147389795-37094173bfd8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGltYWdlfGVufDB8fDB8fHww',
                    tag: 'Tag 3',
                    title: 'Title 3',
                    time: '1d ago',
                    author: 'Author 3',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // News for you title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'News for you',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text('See all', style: Theme.of(context).textTheme.labelSmall),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
