import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;
import 'package:playstation_ui/widgets/details/details_bottom_widget.dart';
import 'package:playstation_ui/widgets/details/details_data_widget.dart';
import 'package:playstation_ui/widgets/details/details_header_widget.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.primaryColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsHeaderWidget(),
              SizedBox(
                height: 16.0,
              ),
              DetailsDataWidget(),
            ],
          ),
          Positioned(
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
            child: DetailsBottomWidget(),
          ),
        ],
      ),
    );
  }
}
