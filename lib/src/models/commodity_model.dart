class CommodityModel {
  CommodityModel(this.img, this.name, this.desc, this.duration, this.price);
  CommodityModel.fromJson(Map<String, dynamic> parsedJson)
      : img = parsedJson['image'].toString(),
        name = parsedJson['name'].toString(),
        desc = parsedJson['desc'].toString(),
        duration = int.parse(parsedJson['duration'].toString()),
        price = int.parse(parsedJson['price'].toString());

  String img;
  String name;
  String desc;
  int duration;
  int price;
}
