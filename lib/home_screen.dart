import 'package:flutter/material.dart';
import 'package:myapp/cell.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'image': 'dmc5.jpg',
        'title': 'Devil May Cry 5',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in tortor et ipsum elementum luctus in id nunc. In fringilla neque ut pharetra iaculis. Nunc at nisl eget arcu dignissim lobortis. Cras dignissim tortor nec tellus cursus sodales. Cras feugiat, nunc eu venenatis commodo, nisl purus lacinia ipsum, sit amet varius lorem magna ac neque. Duis libero mi, dictum vitae mollis quis, elementum nec ante. Nam venenatis nulla nec augue porta, sed fermentum ante venenatis. Praesent lacus mauris, gravida in feugiat ac, tempor vel eros. Quisque pellentesque, augue eget viverra faucibus, odio lacus interdum erat, nec feugiat est felis ac odio. Duis fringilla id metus eget sagittis.',
        'price': 200.00,
      },
      {
        'image': 'fifa.jpg',
        'title': 'FIFA 22',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in tortor et ipsum elementum luctus in id nunc. In fringilla neque ut pharetra iaculis. Nunc at nisl eget arcu dignissim lobortis. Cras dignissim tortor nec tellus cursus sodales. Cras feugiat, nunc eu venenatis commodo, nisl purus lacinia ipsum, sit amet varius lorem magna ac neque. Duis libero mi, dictum vitae mollis quis, elementum nec ante. Nam venenatis nulla nec augue porta, sed fermentum ante venenatis. Praesent lacus mauris, gravida in feugiat ac, tempor vel eros. Quisque pellentesque, augue eget viverra faucibus, odio lacus interdum erat, nec feugiat est felis ac odio. Duis fringilla id metus eget sagittis.',
        'price': 220.00,
      },
      {
        'image': 'minecraft.jpg',
        'title': 'Minecraft',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in tortor et ipsum elementum luctus in id nunc. In fringilla neque ut pharetra iaculis. Nunc at nisl eget arcu dignissim lobortis. Cras dignissim tortor nec tellus cursus sodales. Cras feugiat, nunc eu venenatis commodo, nisl purus lacinia ipsum, sit amet varius lorem magna ac neque. Duis libero mi, dictum vitae mollis quis, elementum nec ante. Nam venenatis nulla nec augue porta, sed fermentum ante venenatis. Praesent lacus mauris, gravida in feugiat ac, tempor vel eros. Quisque pellentesque, augue eget viverra faucibus, odio lacus interdum erat, nec feugiat est felis ac odio. Duis fringilla id metus eget sagittis.',
        'price': 150.00,
      },
      {
        'image': 'nfs.jpg',
        'title': 'Need For Speed',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in tortor et ipsum elementum luctus in id nunc. In fringilla neque ut pharetra iaculis. Nunc at nisl eget arcu dignissim lobortis. Cras dignissim tortor nec tellus cursus sodales. Cras feugiat, nunc eu venenatis commodo, nisl purus lacinia ipsum, sit amet varius lorem magna ac neque. Duis libero mi, dictum vitae mollis quis, elementum nec ante. Nam venenatis nulla nec augue porta, sed fermentum ante venenatis. Praesent lacus mauris, gravida in feugiat ac, tempor vel eros. Quisque pellentesque, augue eget viverra faucibus, odio lacus interdum erat, nec feugiat est felis ac odio. Duis fringilla id metus eget sagittis.',
        'price': 100.00,
      },
      {
        'image': 'rdr2.jpg',
        'title': 'Red Dead Redemption 2',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in tortor et ipsum elementum luctus in id nunc. In fringilla neque ut pharetra iaculis. Nunc at nisl eget arcu dignissim lobortis. Cras dignissim tortor nec tellus cursus sodales. Cras feugiat, nunc eu venenatis commodo, nisl purus lacinia ipsum, sit amet varius lorem magna ac neque. Duis libero mi, dictum vitae mollis quis, elementum nec ante. Nam venenatis nulla nec augue porta, sed fermentum ante venenatis. Praesent lacus mauris, gravida in feugiat ac, tempor vel eros. Quisque pellentesque, augue eget viverra faucibus, odio lacus interdum erat, nec feugiat est felis ac odio. Duis fringilla id metus eget sagittis.',
        'price': 150.00,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store Esprit"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Cell(
            image: items[index]['image'],
            title: items[index]['title'],
            description: items[index]['description'],
            price: items[index]['price'],
          );
        },
      ),
    );
  }
}
