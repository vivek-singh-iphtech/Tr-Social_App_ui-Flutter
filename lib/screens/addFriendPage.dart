import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:social_app/themes/appTheme.dart';
import 'package:provider/provider.dart';

class AddFriendPage extends StatelessWidget {
  const AddFriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return Scaffold(
        backgroundColor: appTheme.isDarkTheme ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: appTheme.isDarkTheme ? Colors.black : Colors.white,
          title: Text(
            'Friends',
            style: appTheme.isDarkTheme
                ? darkTheme.textTheme.titleMedium
                : lightTheme.textTheme.titleMedium,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: appTheme.isDarkTheme ? Colors.white : Colors.black,
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Friend Requests',
                    style: appTheme.isDarkTheme
                        ? darkTheme.textTheme.titleMedium
                        : lightTheme.textTheme.titleMedium,
                  ),
                  Spacer(),
                  const Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: const CircleAvatar(
                        foregroundImage: kIsWeb
                            ? AssetImage("images/profile.jpg")
                            : AssetImage("assets/images/profile.jpg"),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kim Delph',
                              style: appTheme.isDarkTheme
                                  ? darkTheme.textTheme.titleMedium
                                  : lightTheme.textTheme.titleMedium),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text('60 mutual friends',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.titleSmall
                                    : lightTheme.textTheme.titleSmall),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 105.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      // Border color
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Container(
                                    width: 105.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      // Border color
                                      color: const Color.fromARGB(255, 227, 227, 227),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style: TextStyle(
                                          color: Colors.black,
                                           fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                        ),
                                      ),
                                    )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),




                 Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: const CircleAvatar(
                        foregroundImage: kIsWeb
                            ? AssetImage("images/profile.jpg")
                            : AssetImage("assets/images/profile.jpg"),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kim Delph',
                              style: appTheme.isDarkTheme
                                  ? darkTheme.textTheme.titleMedium
                                  : lightTheme.textTheme.titleMedium),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text('60 mutual friends',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.titleSmall
                                    : lightTheme.textTheme.titleSmall),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 105.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      // Border color
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Container(
                                    width: 105.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      // Border color
                                      color: const Color.fromARGB(255, 227, 227, 227),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style: TextStyle(
                                          color: Colors.black,
                                           fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                        ),
                                      ),
                                    )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),




                 Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: const CircleAvatar(
                        foregroundImage: kIsWeb
                            ? AssetImage("images/profile.jpg")
                            : AssetImage("assets/images/profile.jpg"),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kim Delph',
                              style: appTheme.isDarkTheme
                                  ? darkTheme.textTheme.titleMedium
                                  : lightTheme.textTheme.titleMedium),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text('60 mutual friends',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.titleSmall
                                    : lightTheme.textTheme.titleSmall),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 105.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      // Border color
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                        ),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Container(
                                    width: 105.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      // Border color
                                      color: const Color.fromARGB(255, 227, 227, 227),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style: TextStyle(
                                          color: Colors.black,
                                           fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                        ),
                                      ),
                                    )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
