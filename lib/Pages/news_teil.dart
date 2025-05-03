import 'package:flutter/material.dart';
import 'package:news_api_app/Models/card_controller.dart';

class NewsTeil extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String author;

  const NewsTeil({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.author,
  });

  @override
  State<NewsTeil> createState() => _NewsTeilState();
}

class _NewsTeilState extends State<NewsTeil> {
  @override
  Widget build(BuildContext context) {
    CardController _cardController = CardController(
      imageUrl: widget.imageUrl,
      tag: 'News', // you can adjust the tag if needed
      title: widget.title,
      time: widget.time,
      author: widget.author,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back),
                          Text('Back', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          _cardController.imageUrl,
                          fit: BoxFit.cover, // make image fit properly
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _cardController.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow:
                                TextOverflow.ellipsis, // in case it's too long
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _cardController.author, // << USE the data here
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            _cardController.time, // << USE the data here
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
