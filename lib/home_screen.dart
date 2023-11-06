import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/cell.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store Esprit"),
      ),
      body: Column(
        children: const [
          Cell(
            image: "dmc5.jpg",
            title: "Devil May Cry 5",
            description:
                "Action-adventure game featuring fast-paced combat with a rich story.",
            price: 200,
          ),
          Cell(
            image: "fifa.jpg",
            title: "FIFA 22",
            description:
                "Latest installment in the FIFA series with enhanced gameplay and graphics.",
            price: 220,
          ),
          Cell(
            image: "minecraft.jpg",
            title: "Minecraft",
            description:
                "Sandbox game that allows players to build and explore their own worlds.",
            price: 150,
          ),
          Cell(
            image: "nfs.jpg",
            title: "Need For Speed",
            description:
                "Racing game series known for its high-speed pursuits and customizations.",
            price: 100,
          ),
          Cell(
            image: "rdr2.jpg",
            title: "Red Dead Redemption 2",
            description:
                "Open-world game set in the late 1800s with deep storytelling and environment.",
            price: 150,
          ),
        ],
      ),
    );
  }
}
