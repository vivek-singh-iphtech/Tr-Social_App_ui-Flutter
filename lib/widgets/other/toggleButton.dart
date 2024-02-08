import 'package:flutter/material.dart';
import 'package:social_app/themes/appTheme.dart';
import 'package:provider/provider.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({ Key? key }) : super(key: key);

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  

@override
void initState() {
  super.initState();
}



  
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return Container(
      child: Switch(
                  value: appTheme.isDarkTheme,
                  onChanged: ((value) {
                    appTheme.toggleTheme(); 
                  })),
    );
  }
}