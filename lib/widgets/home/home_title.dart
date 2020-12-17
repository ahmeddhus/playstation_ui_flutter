import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class HomeTitleWidget extends StatefulWidget {
  @override
  _HomeTitleWidgetState createState() => _HomeTitleWidgetState();
}

class _HomeTitleWidgetState extends State<HomeTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 16.0),
          child: Text(
            'Featured',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontFamily: 'BROADW',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 16.0),
          child: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Products',
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'BROADW',
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 4
                    ..color = Colors.white,
                ),
              ),
              // Solid text as fill.
              Text(
                'Products',
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'BROADW',
                  color: Style.Colors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
