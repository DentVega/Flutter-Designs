import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TangibleBankHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _createBackground(),
        ],
      ),
    );
  }

  Widget _createBackground() {
    return Container(child: SvgPicture.asset('assets/screen_two.svg', fit: BoxFit.cover,),);
  }
}
