import 'dart:ffi';

import 'package:flutter/material.dart';
import 'SignUpScreen.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  DetailScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count = 3000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Image.asset('Assets/${widget.image}'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(widget.description),
            ),
            SizedBox(
              height: 120,
            ),
            Text('${widget.price.toStringAsFixed(2)} TND',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("exemplaire " + count.toString()),
            ElevatedButton.icon(
              icon: Icon(Icons.shopping_basket),
              label: Text('Acheter'),
              onPressed: () {
                setState(() {
                  count--;
                });
                print(count);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SignUpScreen(imagePath: 'Assets/${widget.image}')),
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
