import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;
import 'package:playstation_ui/widgets/home/bottombar_home.dart';
import 'package:playstation_ui/widgets/home/home_background.dart';
import 'package:playstation_ui/widgets/home/home_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.primaryColor,
      body: Stack(
        children: [
          HomeBackgroundWidget(),
          HomeBodyWidget(),
        ],
      ),
      bottomNavigationBar: BottomBarHome(),
    );
  }
}
