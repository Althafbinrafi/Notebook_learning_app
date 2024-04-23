import 'package:flutter/material.dart';
import 'package:notebook/Constants/Colors.dart';

class DashHome extends StatelessWidget {
  const DashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 155, 155),
        elevation: 0,
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
      body: Center(
        child: Column(
          children: [
            Card(
              color: mainColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                width: 388,
                height: 181,
              ),
            )
          ],
        ),
      ),
    );
  }
}
