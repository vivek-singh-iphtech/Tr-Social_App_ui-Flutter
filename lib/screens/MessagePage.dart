import 'package:flutter/material.dart';
import 'package:social_app/themes/appTheme.dart';
import 'package:social_app/widgets/Message/Groups.dart';
import 'package:social_app/widgets/Message/message.dart';
import 'package:provider/provider.dart';

class MessagePage extends StatefulWidget {
const MessagePage({ Key? key }) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context){
    final appTheme = Provider.of<AppTheme>(context);
    return Scaffold(
       backgroundColor: appTheme.isDarkTheme ? Colors.black : Colors.white,
      appBar:  AppBar(
           backgroundColor: appTheme.isDarkTheme ? Colors.black : Colors.white,
          toolbarHeight: 55.0,
          
          title: Padding(
            padding: const EdgeInsets.only(left: 55.0),
            child: TextField(
              cursorColor: appTheme.isDarkTheme?Colors.white:Colors.black,
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: appTheme.isDarkTheme
                      ? darkTheme.textTheme.titleSmall
                      : lightTheme.textTheme.titleSmall,
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    color: appTheme.isDarkTheme?Colors.white:Colors.black,
                    onPressed: () {},
                  )),
              style: TextStyle(color: appTheme.isDarkTheme?Colors.white:Colors.black, fontSize: 15.0),
            ),
          ),
        ),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(bottom: 18.0),
           child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            unselectedLabelColor: appTheme.isDarkTheme?Colors.white:Colors.black,
            tabs: [
              Container(
                width: double.infinity,
                
                child: Tab(text: 'Message')),
              Container(
                width: double.infinity,
                child: Tab(text: 'Groups')),
            ],
             
            
             
                   ),
         ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  
                  child: Message(),
                ),
                Center(
                  child: Groups(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}