import 'package:flutter/material.dart';
import 'package:news_api_app/Models/card_controller.dart'; // Import the CardController class

class CardPage extends StatefulWidget {
  final String imageUrl;
  final String tag;
  final String title;
  final String time;
  final String author;

  const CardPage({
    super.key,
    required this.imageUrl,
    required this.tag,
    required this.title,
    required this.time,
    required this.author,
  });

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    CardController _cardController = CardController(
      imageUrl: widget.imageUrl,
      tag: widget.tag,
      title: widget.title,
      time: widget.time,
      author: widget.author,
    );

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          Container(
            height: 300,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 23, 30, 95),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // Display the image from the CardController's imageUrl
                  Container(
                    height: 200,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 7, 8, 17),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.network(
                        _cardController.imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  // Display the subtitle and date from the CardController
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _cardController.tag,
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 238, 234, 234),
                        ),
                      ),
                      Text(
                        _cardController.time,
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 238, 234, 234),
                        ),
                      ),
                    ],
                  ),
                  // Display the title of the card from the CardController
                  Row(
                    children: [
                      Text(
                        _cardController.title,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
