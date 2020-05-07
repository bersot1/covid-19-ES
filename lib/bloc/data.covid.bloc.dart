import 'package:covid_19_es/model/covid.infected.model.dart';
import 'package:covid_19_es/repositories/covid.infected.repository.dart';
import 'package:flutter/material.dart';

class HomePageBloc extends ChangeNotifier {
  final covidDataRepository = new CovidInfectedRepository();
  ResultApiCovidModel resultAPI;
  int totalDeath;
  int totalinfected;
  int totalRecovered;
  String citySelected = "Vitória";

  HomePageBloc() {
    updateDataCovid();
  }

  updateDataCovid() {
    covidDataRepository.getDataCovidByCity(citySelected).then((data) {
      this.resultAPI = data;
      // continue to do code here -> get only last istrue ...
    });
  }

  changeCity(String newCity) {
    citySelected = newCity;
    resultAPI = null;
    updateDataCovid();
    notifyListeners();
  }
}
