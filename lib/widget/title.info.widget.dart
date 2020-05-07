import 'package:flutter/material.dart';

import '../constant.dart';

class TitleInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Casos Atualizados\n",
                style: kTitleTextstyle,
              ),
              TextSpan(
                text: "nova atualização 05/maio/2020",
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
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
