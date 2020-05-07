import 'package:covid_19_es/widget/counter.widget.dart';
import 'package:covid_19_es/widget/title.info.widget.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          TitleInfoWidget(),
          SizedBox(
            height: 40,
          ),
          Container(
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
                  number: 200,
                  title: "Infectados",
                ),
                CounterWidget(
                  color: kDeathColor,
                  number: 20,
                  title: "Mortos",
                ),
                CounterWidget(
                  color: kRecovercolor,
                  number: 10,
                  title: "Recuperados",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
