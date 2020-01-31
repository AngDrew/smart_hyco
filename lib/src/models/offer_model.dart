class OfferModel {
  OfferModel(this.name, this.weight, this.date);
  OfferModel.fromJson(Map<String, dynamic> parsedJson)
      : name = parsedJson['name'].toString(),
        weight = int.parse(parsedJson['weight'].toString()),
        date = parsedJson['date'].toString();
  final String name;
  final int weight;
  final String date;
}
