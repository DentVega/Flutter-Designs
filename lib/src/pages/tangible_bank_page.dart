import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TangibleBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/screen_prime.svg',
              fit: BoxFit.cover,
            ),
          ),
          _createButton(context)
        ],
      ),
    );
  }

  Widget _createButton(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(child: Container()),
            _createTitle(),
            SizedBox(
              height: 40.0,
            ),
           _bottomWidget(context),
          ],
        ),
      ),
    );
  }

  Widget _bottomWidget(BuildContext context) {
    return  Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset('assets/opciones.svg')
              ],),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'tangibleBankHome');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: SvgPicture.asset(
                    'assets/icons_start.svg',
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Start Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _createTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Text(
        'Tangible Savings',
        style: TextStyle(
            color: Colors.white,
            fontSize: 70.0,
            fontFamily: 'Times',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
