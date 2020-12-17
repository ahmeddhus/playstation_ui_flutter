import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class HomeBackgroundWidget extends StatefulWidget {
  @override
  _HomeBackgroundWidgetState createState() => _HomeBackgroundWidgetState();
}

class _HomeBackgroundWidgetState extends State<HomeBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                blurRadius: 12.0,
                spreadRadius: 1.0,
                offset: Offset(-1.5, -1.5),
              ),
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12.0,
                spreadRadius: 1.0,
                offset: Offset(1.5, 1.5),
              ),
            ],
          ),
        ),
        Positioned(
          right: -30.0,
          child: Container(
            height: MediaQuery.of(context).size.height - 120,
            width: MediaQuery.of(context).size.width / 2 - 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
              gradient: LinearGradient(
                  colors: [
                    Style.Colors.g1BackgroundColor,
                    Style.Colors.g2BackgroundColor,
                  ],
                  stops: [
                    0.0,
                    1.0,
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'DUAL SCENE',
                      style: TextStyle(
                        color: Colors.white10,
                        fontSize: 120.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
