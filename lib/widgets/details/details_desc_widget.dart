import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class DetailsDescWidget extends StatefulWidget {
  @override
  _DetailsDescWidgetState createState() => _DetailsDescWidgetState();
}

class _DetailsDescWidgetState extends State<DetailsDescWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Text(
              'Dual Scene',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontFamily: 'BROADW',
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              bottom: 8.0,
              right: 8.0,
            ),
            child: Text(
              'DualScene also adds a built-in microphone array, which will enable players to easily chat with friends without a headset...',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
