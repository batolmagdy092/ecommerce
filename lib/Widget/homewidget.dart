import 'package:flutter/material.dart';

class Homewid extends StatelessWidget {
  String name, image;
   Homewid({super.key,
  required this.name,
    required this.image,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: [
           Image(image: NetworkImage(image),),
           Text(name),
          ],
        ),
      )

    );
  }
}
