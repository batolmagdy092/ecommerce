import 'package:flutter/foundation.dart';

class Signupmodel
{
  bool status;


  Signupmodel({
    required this.status,
});
  factory Signupmodel.fromjson(Map<String,dynamic> json)
  {
    return Signupmodel(status: json['status']);
  }
}