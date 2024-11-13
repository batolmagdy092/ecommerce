import 'package:ecommerce/Models/home.dart';
import 'package:ecommerce/Services/homeservice.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Homeprovider with ChangeNotifier
{
  Homemodel? dataofhome;

   Future<void> getdataprovider () async
  {
  dataofhome=  await Homeservice.getdata();
    notifyListeners();
  }
}