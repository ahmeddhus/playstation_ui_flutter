import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:playstation_ui/screens/details_screen.dart';
import 'controller_card.dart';
import 'package:playstation_ui/style/controller_clipper.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class HomeSwiperWidget extends StatefulWidget {
  @override
  _HomeSwiperWidgetState createState() => _HomeSwiperWidgetState();
}

class _HomeSwiperWidgetState extends State<HomeSwiperWidget> {
  List<String> controllerImg = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
      child: Container(
        height: 330.0,
        width: MediaQuery.of(context).size.width,
        child: Swiper(
          itemCount: 2,
          viewportFraction: 0.7,
          scale: 0.9,
          loop: false,
          autoplay: false,
          onTap: (int index){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsScreen()));
          },
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipPath(
                clipper: ControllerClipper(),
                child: ControllerCard(),
              ),
            );
          },
        ),
      ),
    );
  }
}
