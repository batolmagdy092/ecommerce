import 'package:ecommerce/Provider/homeprovider.dart';
import 'package:ecommerce/Screen/details.dart';
import 'package:ecommerce/Widget/homewidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        centerTitle: true,
      ),
      body: Consumer<Homeprovider>(
          builder: (context, value, child) {
            var obj = value.dataofhome;
            if (obj == null) {
              value.getdataprovider();
              return CircularProgressIndicator();
            }
            else {
              return GridView.builder
                (
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute
                          (builder: (context) =>
                            detail
                              (name: obj.products[index]['name'],
                                image: obj.products[index]['image'],
                                description: obj
                                    .products[index]['description']),));
                      },
                      child: Homewid(name: obj.products[index]['name'],
                          image: obj.products[index]['image']),

                    );
                  }

              );
            }
          }
    ),
    );
  }
}