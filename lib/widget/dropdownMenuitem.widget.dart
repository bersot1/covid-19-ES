import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropdownMenuItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Color(0xFFE5E5E5)),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/maps-and-flags.svg",
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: DropdownButton(
              isExpanded: true,
              underline: SizedBox(),
              icon: SvgPicture.asset("assets/icons/dropdown.svg"),
              value: 'Serra',
              items: [
                'Vila Velha',
                'Serra',
                'Vitoria',
              ].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}
