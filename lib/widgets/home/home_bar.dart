import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class HomeBarWidget extends StatefulWidget {
  @override
  _HomeBarWidgetState createState() => _HomeBarWidgetState();
}

class _HomeBarWidgetState extends State<HomeBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            height: 50.0,
            width: 50.0,
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
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  tileMode: TileMode.repeated),
              shape: BoxShape.circle,
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
              heroTag: 'home menu',
              child: Icon(Icons.menu),
              backgroundColor: Style.Colors.primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            height: 50.0,
            width: 50.0,
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
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  tileMode: TileMode.repeated),
              shape: BoxShape.circle,
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
              heroTag: 'home cart',
              child: Icon(Icons.shopping_cart_outlined),
              backgroundColor: Style.Colors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
