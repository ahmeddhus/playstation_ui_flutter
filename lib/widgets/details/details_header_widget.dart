import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

import 'details_bar.dart';
import 'details_header_background.dart';

class DetailsHeaderWidget extends StatefulWidget {
  @override
  _DetailsHeaderWidgetState createState() => _DetailsHeaderWidgetState();
}

class _DetailsHeaderWidgetState extends State<DetailsHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.0,
      child: Stack(
        children: [
          Positioned(
            top: 0.0,
            child: DetailsHeaderBackground(),
          ),
          Positioned(
            top: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailsBar(),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'PLATFORM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'PS5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'RELEASE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'Foll 2020',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'PRICE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    '\$50',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 32.0,
            bottom: -16.0,
            child: Container(
              height: 300.0,
              width: 200.0,
              child: RotatedBox(
                quarterTurns: 3,
                child: Image.asset(
                  'assets/images/controller.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -16.0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
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
                      blurRadius: 10.0,
                      spreadRadius: 0.1,
                      offset: Offset(-8.0, -8.0),
                    ),
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: Offset(10.0, 10.0),
                    ),
                  ],
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.bookmark_border,
                    size: 30.0,
                  ),
                  backgroundColor: Style.Colors.primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
