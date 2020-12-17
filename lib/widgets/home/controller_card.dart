import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class ControllerCard extends StatefulWidget {
  @override
  _ControllerCardState createState() => _ControllerCardState();
}

class _ControllerCardState extends State<ControllerCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
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
              spreadRadius: 0.5,
              offset: Offset(-1.0, -1.0),
            ),
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Image.asset(
                      'assets/images/ps_logo.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                height: 150.0,
                width: 250.0,
                child: Image.asset(
                  'assets/images/controller.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: Text(
                'Dual Scene',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'BROADW',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: Text(
                'Official PS5 controller',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
