import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class DetailsBar extends StatefulWidget {
  @override
  _DetailsBarState createState() => _DetailsBarState();
}

class _DetailsBarState extends State<DetailsBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32.0,
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: Style.Colors.primaryColor,
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
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  tileMode: TileMode.repeated,
                ),
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
                heroTag: 'details cart',
                child: Icon(Icons.shopping_cart_outlined),
                backgroundColor: Style.Colors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
