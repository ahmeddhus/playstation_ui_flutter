import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class DetailsBottomWidget extends StatefulWidget {
  @override
  _DetailsBottomWidgetState createState() => _DetailsBottomWidgetState();
}

class _DetailsBottomWidgetState extends State<DetailsBottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 70.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '\$',
                    style: TextStyle(
                      color: Style.Colors.secondaryColor,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    '50',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                    ),
                  ),
                ],
              ),
              Container(
                height: 50.0,
                width: 200.0,
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
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Preorder',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      FlatButton(
                        minWidth: 0,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height,
                              width: 2.0,
                              color: Colors.white10,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
