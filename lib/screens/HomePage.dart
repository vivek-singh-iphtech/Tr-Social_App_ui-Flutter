import 'package:flutter/material.dart';
import 'package:social_app/themes/appTheme.dart';
import 'package:social_app/widgets/Home/posts.dart';
import 'package:social_app/widgets/other/toggleButton.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return Scaffold(
      backgroundColor: appTheme.isDarkTheme ? Colors.black : Colors.white,
      appBar: AppBar(
          backgroundColor: appTheme.isDarkTheme ? Colors.black : Colors.white,
          title: Text('Feeds',
              style: appTheme.isDarkTheme
                  ? darkTheme.textTheme.titleMedium
                  : lightTheme.textTheme.titleMedium),
          centerTitle: true,
          actions: const [ToggleButton()]),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent, 
        onPressed: () {},
         shape: const RoundedRectangleBorder( // <= Change BeveledRectangleBorder to RoundedRectangularBorder
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
      bottomLeft: Radius.circular(30.0),
      bottomRight: Radius.circular(30.0),
    ),
  ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const SingleChildScrollView(
        child: Posts(),
      ),
    );
  }
}
