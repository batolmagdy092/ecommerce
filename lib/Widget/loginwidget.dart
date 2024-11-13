import 'package:flutter/material.dart';

class Loginwid extends StatelessWidget {

  String name;
  String email;
  String password;

   Loginwid({super.key,
   required this.name,
     required this.password,
     required this.email
   });

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
