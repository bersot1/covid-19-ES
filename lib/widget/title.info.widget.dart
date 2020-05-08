import 'package:covid_19_es/bloc/data.covid.bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';

class TitleInfoWidget extends StatelessWidget {
  _launchURL() async {
    const url = 'https://coronavirus.es.gov.br/Noticias';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final HomePageBloc bloc = Provider.of<HomePageBloc>(context);
    return Row(
      children: <Widget>[
        bloc.dateLastUpdate == 'none'
            ? Text("Carregando...")
            : RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Casos Atualizados\n",
                      style: kTitleTextstyle,
                    ),
                    TextSpan(
                      text: "Última atualização:  ${bloc.dateLastUpdate}",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    )
                  ],
                ),
              ),
        Spacer(),
        Container(
          child: FlatButton(
            child: Text(
              "Veja detalhes",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: _launchURL,
          ),
        )
      ],
    );
  }
}
