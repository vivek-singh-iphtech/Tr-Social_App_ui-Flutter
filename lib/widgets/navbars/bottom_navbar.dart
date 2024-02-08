import 'package:flutter/material.dart';
import 'package:social_app/screens/HomePage.dart';
import 'package:social_app/screens/NotificationPage.dart';
import 'package:social_app/themes/appTheme.dart';
import 'package:provider/provider.dart';

class BottomNavbar extends StatefulWidget {
const BottomNavbar({ Key? key }) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  final PageController _pageController = PageController();
  int current_index = 0;
   
  @override
  void dispose()
  {
    _pageController.dispose();
    super.dispose();
  }

void onTap(int index)
{
  setState(() {
    current_index = index;
  });

  _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
}


  @override
  Widget build(BuildContext context){
     final appTheme = Provider.of<AppTheme>(context);
    return Scaffold(
      backgroundColor: appTheme.isDarkTheme?Colors.black:Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            current_index = index;
          });
        },
        children: [
          HomePage(),
          Container(color: Colors.green),
          NotificationPage(),
          Container(color: Colors.yellow),
        ],
      ),


      bottomNavigationBar: Container(
        
        height: 75.0,
        decoration: BoxDecoration(
         
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: IconButton(onPressed: (){
                    onTap(2);
                  }, icon: Icon(
                    Icons.message,
                    size: 28.0,
                    color: current_index==2?Colors.blue:Colors.grey,
                  )),
                ),

                 IconButton(onPressed: (){
                  onTap(1);
                }, icon: Icon(
                  Icons.group,
                  size: 28.0,
                  color: current_index==1?Colors.blue:Colors.grey,
                )),

                IconButton(onPressed: (){
                  onTap(0);
                }, icon: Icon(
                  Icons.home,
                  size: 28.0,
                  color: current_index==0?Colors.blue:Colors.grey,
                )),

                  IconButton(onPressed: (){
                  onTap(3);
                }, icon: Icon(
                  Icons.notifications,
                  size: 28.0,
                  color: current_index==3?Colors.blue:Colors.grey,
                )),

                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(onPressed: (){
                    onTap(4);
                                    }, icon: Icon(
                    Icons.account_box,
                    size: 28.0,
                    color: current_index==4?Colors.blue:Colors.grey,
                                    )),
                  )
          ],
        ),
      ),
    );
  }
}