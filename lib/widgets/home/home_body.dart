import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

import 'home_bar.dart';
import 'home_bottom_bar.dart';
import 'home_swiper.dart';
import 'home_tab.dart';
import 'home_title.dart';

class HomeBodyWidget extends StatefulWidget {
  @override
  _HomeBodyWidgetState createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.0,
        ),
        HomeBarWidget(),
        HomeTitleWidget(),
        HomeTabWidget(),
        HomeSwiperWidget(),
        HomeBottomBarWidget(),
      ],
    );
  }
}
