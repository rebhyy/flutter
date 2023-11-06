import 'package:flutter/material.dart';
import 'package:myapp/DetailScreen.dart'; // Import the detail page

class Cell extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final String description; // Assuming there's a description to pass

  const Cell({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description, // Make sure to pass this parameter when creating Cell
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Push the DetailScreen onto the navigation stack
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              image: image,
              title: title,
              description: description,
              price: price,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "Assets/$image",
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "${price.floor().toString()} TND",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
