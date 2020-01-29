import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchCustom extends StatefulWidget {
  @override
  _SwitchCustomState createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {

  bool valueSwitch = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: valueSwitch,
      onChanged: (value) {
        setState(() {
          valueSwitch = value;
        });
      },
      activeColor: Colors.lightBlue,
    );
  }
}
