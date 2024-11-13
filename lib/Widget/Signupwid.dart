import 'package:flutter/material.dart';

class Wid extends StatelessWidget {

  String name;
  String email;
  String password;

   Wid({super.key,
     required this.name,
     required this.email,
     required this.password,
   });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          children: [
             Text(name,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
              ),

            SizedBox(height: 10,),
            Text(email,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 10,),
            Text(password,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
