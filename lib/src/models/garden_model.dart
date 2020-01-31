class GardenModel {
  GardenModel(this.name, this.from, this.to, this.progress);
  GardenModel.fromJson(Map<String, dynamic> parsedJson)
      : name = parsedJson[''].toString(),
        from = parsedJson[''].toString(),
        to = parsedJson[''].toString(),
        progress = double.parse(parsedJson[''].toString());

  final String name;
  final String from;
  final String to;
  final double progress;
}
