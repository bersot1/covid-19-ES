class ResultApiCovidModel {
  int count;
  String next;
  dynamic previous;
  List<Results> results;

  ResultApiCovidModel({this.count, this.next, this.previous, this.results});

  ResultApiCovidModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String city;
  String cityIbgeCode;
  int confirmed;
  double confirmedPer100kInhabitants;
  DateTime date;
  double deathRate;
  int deaths;
  int estimatedPopulation2019;
  bool isLast;
  int orderForPlace;
  String placeType;
  String state;

  Results(
      {this.city,
      this.cityIbgeCode,
      this.confirmed,
      this.confirmedPer100kInhabitants,
      this.date,
      this.deathRate,
      this.deaths,
      this.estimatedPopulation2019,
      this.isLast,
      this.orderForPlace,
      this.placeType,
      this.state});

  Results.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    cityIbgeCode = json['city_ibge_code'];
    confirmed = json['confirmed'];
    confirmedPer100kInhabitants = json['confirmed_per_100k_inhabitants'];
    date = DateTime.parse(json['date']);
    deathRate = json['death_rate'];
    deaths = json['deaths'];
    estimatedPopulation2019 = json['estimated_population_2019'];
    isLast = json['is_last'];
    orderForPlace = json['order_for_place'];
    placeType = json['place_type'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['city_ibge_code'] = this.cityIbgeCode;
    data['confirmed'] = this.confirmed;
    data['confirmed_per_100k_inhabitants'] = this.confirmedPer100kInhabitants;
    data['date'] = this.date.toString();
    data['death_rate'] = this.deathRate;
    data['deaths'] = this.deaths;
    data['estimated_population_2019'] = this.estimatedPopulation2019;
    data['is_last'] = this.isLast;
    data['order_for_place'] = this.orderForPlace;
    data['place_type'] = this.placeType;
    data['state'] = this.state;
    return data;
  }
}
