import 'package:dio/dio.dart';
import 'package:ecommerce/Models/signup_model.dart';

class Loginservice
{
  static Dio dio = dio;
  static Future<Signupmodel> addData ({required String email,required String password})async{
    try{
      Response response = await dio.post('https://student.valuxapps.com/api/login',
         data:
         {"email": email,
           "password": password,
         }
      );
      if(response.statusCode == 200)
      {
        return Signupmodel.fromjson(response.data);
      }
      else{
        throw Exception('Error in take data');
      }
    }
    catch(error)
    {
      throw Exception('Error in add data $error');
    }  }


}