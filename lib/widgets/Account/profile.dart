import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/themes/appTheme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 65.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                foregroundImage: kIsWeb
                    ? AssetImage("images/profile.jpg")
                    : AssetImage("assets/images/profile.jpg"),
                radius: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text('Kim Delph',
                    style: appTheme.isDarkTheme
                        ? darkTheme.textTheme.titleMedium
                        : lightTheme.textTheme.titleMedium),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text('status should be here',
                    style: appTheme.isDarkTheme
                        ? darkTheme.textTheme.titleSmall
                        : lightTheme.textTheme.titleSmall),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 105.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          // Border color
                          color: Colors.grey,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.message,
                              size: 25.0,
                              color: Colors.white,
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Container(
                          width: 105.0,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            // Border color
                            color: Colors.blueAccent,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 25.0,
                                color: Colors.white,
                              ))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('7748',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.titleLarge
                                : lightTheme.textTheme.titleLarge),
                        Text('Posts',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.titleSmall
                                : lightTheme.textTheme.titleSmall),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        children: [
                          Text('2359',
                              style: appTheme.isDarkTheme
                                  ? darkTheme.textTheme.titleLarge
                                  : lightTheme.textTheme.titleLarge),
                          Text('Friends',
                              style: appTheme.isDarkTheme
                                  ? darkTheme.textTheme.titleSmall
                                  : lightTheme.textTheme.titleSmall),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        children: [
                          Text('6950',
                              style: appTheme.isDarkTheme
                                  ? darkTheme.textTheme.titleLarge
                                  : lightTheme.textTheme.titleLarge),
                          Text(
                            'Groups',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.titleSmall
                                : lightTheme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -25),
                child: GridView.count(
                    crossAxisCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(30, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: kIsWeb
                                  ? AssetImage("images/profile.jpg")
                                  : AssetImage("assets/images/profile.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
