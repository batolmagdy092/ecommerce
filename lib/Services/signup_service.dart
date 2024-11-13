import 'package:dio/dio.dart';
import 'package:ecommerce/Models/signup_model.dart';

class Signupservice
{
    static Dio dio = dio;

    static Future<Signupmodel>  adddata ({ required String name ,required String password ,required String email ,required String phone}) async
    {
      try{
        Response response = await dio.post('https://student.valuxapps.com/api/register',
       data:{
         "name": name,
         "password" :password,
         "email":email,
         "phone": phone,
       }
        );
        if(response.statusCode == 201)
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
      }
    }
}