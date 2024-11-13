import 'package:ecommerce/Models/signup_model.dart';
import 'package:ecommerce/Services/loginservice.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Loginprovider with ChangeNotifier
{
  Signupmodel? data;

  Future<bool> postdata (email , password) async{

    await Loginservice.addData(email: email, password: password);
    notifyListeners();
    return true;
  }
}