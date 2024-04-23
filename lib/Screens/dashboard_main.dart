import 'package:flutter/material.dart';

class DashHome extends StatelessWidget {
  const DashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 155, 155),
        elevation: 10,
        actions: [
          Row(
            children: [
              Icon(Icons.menu),
              Align(
                alignment: Alignment.topLeft,
              )
            ],
          )
        ],
      ),
    );
  }
}
