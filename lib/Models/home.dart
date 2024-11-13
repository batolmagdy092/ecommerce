class Homemodel
{
  List<dynamic> products;

    Homemodel({
      required this.products,
});
    factory Homemodel.fromjson(Map<String,dynamic>json)
    {
      return Homemodel(products:json['data']['products'],
      );
    }
}