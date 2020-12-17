import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

import 'details_desc_widget.dart';
import 'details_info_widget.dart';

class DetailsDataWidget extends StatefulWidget {
  @override
  _DetailsDataWidgetState createState() => _DetailsDataWidgetState();
}

class _DetailsDataWidgetState extends State<DetailsDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsDescWidget(),
          SizedBox(
            height: 32.0,
          ),
          DetailsInfoWidget(),
        ],
      ),
    );
  }
}
