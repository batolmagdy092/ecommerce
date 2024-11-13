import 'package:ecommerce/Provider/homeprovider.dart';
import 'package:ecommerce/Screen/Home.dart';
import 'package:ecommerce/Screen/Signupscreen.dart';
import 'package:ecommerce/Screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Provider/signup_provider.dart';
import 'package:ecommerce/Provider/loginprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context) => Signupprovider(),),
    ChangeNotifierProvider(create: (context)=> Loginprovider(),),
      ChangeNotifierProvider(create: (context) => Homeprovider(),),

    ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
