import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class detail extends StatelessWidget {
  String name, image, description;
   detail({super.key,
   required this.name,
     required this.image,
     required this.description
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product details"),
      ),
      body: Consumer(
          builder: (context, value, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Image(image: NetworkImage(image),),
                  ListTile(
                    title: Text(name),
                    subtitle: Text(description),
                  )
                ],
              ),
            );
          },
      ),


    );
  }
}
