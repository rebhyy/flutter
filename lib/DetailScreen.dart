import 'package:flutter/material.dart';
import 'SignUpScreen.dart';

class DetailScreen extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  const DetailScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Image.asset('Assets/$image'),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(description),
          ),
          Spacer(),
          Text('${price.toStringAsFixed(2)} TND',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ElevatedButton(
            child: Text('Acheter'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
