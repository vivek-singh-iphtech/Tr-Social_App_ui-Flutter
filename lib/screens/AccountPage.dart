import 'package:flutter/material.dart';
import 'package:social_app/themes/appTheme.dart';
import 'package:social_app/widgets/Account/profile.dart';
import 'package:provider/provider.dart';


class AccountPage extends StatelessWidget {
const AccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final appTheme = Provider.of<AppTheme>(context);
    return Scaffold(
      backgroundColor: appTheme.isDarkTheme ? Colors.black : Colors.white,
      body: SingleChildScrollView(
        child: Profile(),
      ),
    );
  }
}