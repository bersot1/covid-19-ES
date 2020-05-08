import 'package:covid_19_es/bloc/data.covid.bloc.dart';
import 'package:covid_19_es/widget/counter.widget.dart';
import 'package:covid_19_es/widget/title.info.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant.dart';
import 'loader.widget.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomePageBloc bloc = Provider.of<HomePageBloc>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          TitleInfoWidget(),
          SizedBox(
            height: 40,
          ),
          bloc.totalDeath == 0
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 30,
                        color: kShadowColor,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CounterWidget(
                        color: kInfectedColor,
                        number: bloc.totalinfected,
                        title: "Infectados",
                      ),
                      CounterWidget(
                        color: kDeathColor,
                        number: bloc.totalDeath,
                        title: "Mortos",
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
