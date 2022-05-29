import '../config/image.dart';

class Restaurant{

  late String name;
  late String image;
  late String type;

  Restaurant(this.name, this.image, this.type);
}

class MyListBuilder{
  static var rest=Restaurant("Etaliano", CustomAssetImage.f1, "New Restaurent");
  static var rest1=Restaurant("Rooftop Cafe Bangla", CustomAssetImage.f2, "Best Restaurent");
  static var rest2=Restaurant("Pizza Burg", CustomAssetImage.f3, "Nearby Restaurent");
  static var rest3=Restaurant("Peri pasta", CustomAssetImage.f1, "Buffet");
   static List<Restaurant> lst= [];

   static  List<Restaurant> buildList(){
    lst.add(rest);
    lst.add(rest1);
    lst.add(rest2);
    lst.add(rest3);
    return lst;

  }

}



