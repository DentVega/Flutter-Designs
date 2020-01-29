import 'package:flutter/material.dart';
import 'package:flutter_designs/src/widgets/switch_custom.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TangibleBankHome extends StatefulWidget {
  @override
  _TangibleBankHomeState createState() => _TangibleBankHomeState();
}

class _TangibleBankHomeState extends State<TangibleBankHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_createBackground(), _createForm(context)],
      ),
    );
  }

  Widget _createBackground() {
    return Container(
      child: SvgPicture.asset(
        'assets/screen_two.svg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createForm(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 180.0),
        child: Column(
          children: <Widget>[
            _createCard(),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[_dollar(), _box()],
                  ),
                  _today(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      height: 200.0,
      child: Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            _topCard(),
            Expanded(child: Container()),
            _bottomCard(),
          ],
        ),
      ),
    );
  }

  Widget _topCard() {
    return Container(
        padding: EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[_infoSale(), _selectTypeCard()],
        ));
  }

  Widget _selectTypeCard() {
    return Container(
        padding: EdgeInsets.only(right: 30.0),
        child: Column(
          children: <Widget>[
            SwitchCustom(),
            Text(
              'Credit',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ));
  }

  Widget _infoSale() {
    return Container(
      padding: EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                '18,482',
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              )),
          Text(
            'Available balance',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _bottomCard() {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.only(bottom: 20.0, right: 30.0),
      child: SvgPicture.asset('assets/icon_into_card.svg'),
    );
  }

  Widget _dollar() {
    return Container(
      padding: EdgeInsets.only(right: 100.0),
      child: Column(
        children: <Widget>[
          SvgPicture.asset('assets/icon_dollar.svg', width: 70.0, height: 40.0),
          SizedBox(
            height: 10.0,
          ),
          Text('Callback'),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Text(
                '\$',
                style: TextStyle(fontSize: 14.0, fontFamily: 'Times'),
              ),
              SizedBox(width: 3),
              Text(
                '134.5',
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Times',
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _box() {
    return Container(
      child: Column(
        children: <Widget>[
          SvgPicture.asset('assets/icon_box.svg', width: 70.0, height: 40.0),
          SizedBox(
            height: 10.0,
          ),
          Text('Safe Deposit'),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Text(
                '\$',
                style: TextStyle(fontSize: 14.0, fontFamily: 'Times'),
              ),
              SizedBox(width: 3),
              Text(
                '134.5',
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Times',
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _today(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40.0,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            'Today',
            style: TextStyle(
                fontSize: 16.0,
                color: Color(0xff1F518A),
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        _listBuy(context),
        SizedBox(height: 40.0,),
        _listIcons()
      ],
    );
  }

  Widget _listBuy(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'expensesPage');
      },
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        alignment: Alignment.centerLeft,
        width: double.maxFinite,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset('assets/icono_apple.svg'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Apple Store'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('-\$34.5'),
                    SizedBox(width: 5.0,),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _listIcons() {
    return Container(
      padding: EdgeInsets.only(right: 40.0, left: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset('assets/icon_card.svg'),
          SvgPicture.asset('assets/icon_feather_bell.svg'),
          SvgPicture.asset('assets/icon_message.svg')
        ],
      ),
    );
  }
}
