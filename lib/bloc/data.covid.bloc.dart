import 'package:covid_19_es/model/covid.infected.model.dart';
import 'package:covid_19_es/repositories/covid.infected.repository.dart';
import 'package:flutter/material.dart';

class HomePageBloc extends ChangeNotifier {
  final covidDataRepository = new CovidInfectedRepository();
  ResultApiCovidModel dataAPI;
  List result;
  int totalDeath = 0;
  int totalinfected = 0;
  String dateLastUpdate = "none";
  String citySelected = "Vitória";

  HomePageBloc() {
    updateDataCovid();
  }

  updateDataCovid() {
    covidDataRepository.getDataCovidByCity(citySelected).then((data) {
      this.totalDeath = data.results[0].deaths;
      this.totalinfected = data.results[0].confirmed;
      this.dateLastUpdate = data.results[0].date.toString().substring(0, 10);
      notifyListeners();
    });
  }

  changeCity(String newCity) {
    citySelected = newCity;
    this.totalDeath = 0;
    this.totalinfected = 0;
    updateDataCovid();
    notifyListeners();
  }
}
