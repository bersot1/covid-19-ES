import 'package:covid_19_es/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19 ES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF3383CD),
                    Color(0xFF11249F),
                  ],
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/virus.png"),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/Drcorona.svg",
                          width: 230,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                        Positioned(
                          top: 20,
                          left: 150,
                          child: Text(
                            "Casos no \nEspirito Santo",
                            style:
                                kHeadingTextStyle.copyWith(color: Colors.white),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
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
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Row(
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
                    Text(
                      "Veja detalhes",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
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
                      Counter(
                        color: kInfectedColor,
                        number: 200,
                        title: "Infectados",
                      ),
                      Counter(
                        color: kDeathColor,
                        number: 20,
                        title: "Mortos",
                      ),
                      Counter(
                        color: kRecovercolor,
                        number: 10,
                        title: "Recuperados",
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;
  const Counter({
    Key key,
    @required this.number,
    @required this.color,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$number",
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
