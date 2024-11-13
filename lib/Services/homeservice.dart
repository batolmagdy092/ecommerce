import 'package:dio/dio.dart';
import 'package:ecommerce/Models/home.dart';

class Homeservice
{
 static final Dio dio = Dio();
  static Future<Homemodel> getdata () async
  {
    try{
      Response response = await dio.get("https://student.valuxapps.com/api/home");
      if(response.statusCode ==200)
        {
          return Homemodel.fromjson(response.data);
        }
      else{
        throw Exception('error in fetch data');
      }
    }
    catch(error)
    {
      throw Exception('error in get data $error');
    }
  }

}