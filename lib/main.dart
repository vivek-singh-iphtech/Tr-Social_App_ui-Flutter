import 'package:flutter/material.dart';
import 'package:social_app/themes/appTheme.dart';
import 'package:social_app/widgets/navbars/bottom_navbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => AppTheme(),
      child: MyApp(),
    ),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppTheme appTheme = AppTheme();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Provider.of<AppTheme>(context).themeMode,
      home: const BottomNavbar(),
    );
  }
}
