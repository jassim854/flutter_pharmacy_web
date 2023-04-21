import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.black,
                  Colors.blue,
                ],
              )),
              child: Row(
                children: [
                  Icon(Icons.email_outlined),
                  Text('absdddddd@gmail.com'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.email_outlined),
                  Text('absdddddd@gmail.com'),
                ],
              ))
        ],
      ),
    );
  }
}
