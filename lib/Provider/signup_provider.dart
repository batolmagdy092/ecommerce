import 'package:ecommerce/Models/signup_model.dart';
import 'package:ecommerce/Services/signup_service.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Signupprovider with ChangeNotifier
{
  Signupmodel? data;

  Future<bool> postdata ( String name ,  String password,  String email,  String phone)
  async{
    data = await Signupservice.adddata(name: name, password: password, email: email, phone: phone);
    notifyListeners();
    return true;

  }
}