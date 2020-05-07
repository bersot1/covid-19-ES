import 'package:covid_19_es/widget/dropdownMenuitem.widget.dart';
import 'package:covid_19_es/widget/header.widget.dart';
import 'package:covid_19_es/widget/info.infected.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HeaderWidget(),
          DropdownMenuItemWidget(),
          SizedBox(
            height: 30,
          ),
          InfoWidget(),
        ],
      ),
    );
  }
}
