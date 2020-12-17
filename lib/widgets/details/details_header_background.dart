import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class DetailsHeaderBackground extends StatefulWidget {
  @override
  _DetailsHeaderBackgroundState createState() => _DetailsHeaderBackgroundState();
}

class _DetailsHeaderBackgroundState extends State<DetailsHeaderBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 330.0,
      decoration: BoxDecoration(
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
    );
  }
}
