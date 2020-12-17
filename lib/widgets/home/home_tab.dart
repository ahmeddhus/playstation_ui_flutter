import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class HomeTabWidget extends StatefulWidget {
  @override
  _HomeTabWidgetState createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          SizedBox(
            width: 25.0,
          ),
          Container(
            height: 40.0,
            width: 40.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                child: Icon(
                  Icons.widgets_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 25.0,
          ),
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Style.Colors.g1BtnColor,
                    Style.Colors.g2BtnColor,
                  ],
                  stops: [
                    0.0,
                    1.0,
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Style.Colors.secondaryColor,
                  blurRadius: 15.0,
                  spreadRadius: 0.1,
                  offset: Offset(0.0, 0.0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(
                'assets/images/console.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 32.0,
          ),
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Style.Colors.primaryColor2,
                    Style.Colors.primaryColor,
                  ],
                  stops: [
                    0.0,
                    1.0,
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(
                'assets/images/ps_vita.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 32.0,
          ),
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Style.Colors.primaryColor2,
                    Style.Colors.primaryColor,
                  ],
                  stops: [
                    0.0,
                    1.0,
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(
                'assets/images/mouse.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
