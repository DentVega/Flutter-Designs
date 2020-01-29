import 'package:flutter/material.dart';

class ExpensesPage extends StatelessWidget {
  //#F4F4F4

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      child: Icon(Icons.arrow_back_ios),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                        shape: BoxShape.circle
                      ),
                    ),
                  ),
                  Text(
                    'Spedings',
                    style: TextStyle(
                      fontSize: 20.0,
                        color: Color(0xff1F518A), fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Icon(Icons.more_horiz),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
