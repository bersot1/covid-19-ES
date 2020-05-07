import 'package:covid_19_es/model/covid.infected.model.dart';
import 'package:dio/dio.dart';

class CovidInfectedRepository {
  Future<ResultApiCovidModel> getDataCovidByCity(String city) async {
    var url = "https://brasil.io/api/dataset/covid19/caso/data/?city=" + city;

    Response response = await Dio().get(url);

    return ResultApiCovidModel.fromJson(response.data);
  }
}
