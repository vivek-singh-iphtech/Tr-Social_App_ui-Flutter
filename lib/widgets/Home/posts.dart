import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/themes/appTheme.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    foregroundImage: kIsWeb?AssetImage("images/profile.jpg"):AssetImage("assets/images/profile.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('Kim Delph',
                        style: appTheme.isDarkTheme
                            ? darkTheme.textTheme.titleMedium
                            : lightTheme.textTheme.titleMedium),
                  ),
          
                  Spacer(),
          
                  Text('19 min Ago',
                        style: appTheme.isDarkTheme
                            ? darkTheme.textTheme.titleSmall
                            : lightTheme.textTheme.titleSmall),
          
                ],
              ),
          
              const Padding(
                padding: EdgeInsets.only(top:10.0),
                child: Image(image: 
                 kIsWeb?AssetImage("images/profile.jpg"):AssetImage("assets/images/profile.jpg")),
              )
            ],
          ),



            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      foregroundImage: kIsWeb?AssetImage("images/profile.jpg"):AssetImage("assets/images/profile.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Kim Delph',
                          style: appTheme.isDarkTheme
                              ? darkTheme.textTheme.titleMedium
                              : lightTheme.textTheme.titleMedium),
                    ),
                        
                    Spacer(),
                        
                    Text('19 min Ago',
                          style: appTheme.isDarkTheme
                              ? darkTheme.textTheme.titleSmall
                              : lightTheme.textTheme.titleSmall),
                        
                  ],
                ),
                        
                const Padding(
                  padding: EdgeInsets.only(top:10.0),
                  child: Image(image: 
                   kIsWeb?AssetImage("images/profile.jpg"):AssetImage("assets/images/profile.jpg")),
                )
              ],
                        ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      foregroundImage: kIsWeb?AssetImage("images/profile.jpg"):AssetImage("assets/images/profile.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Kim Delph',
                          style: appTheme.isDarkTheme
                              ? darkTheme.textTheme.titleMedium
                              : lightTheme.textTheme.titleMedium),
                    ),
                        
                    Spacer(),
                        
                    Text('19 min Ago',
                          style: appTheme.isDarkTheme
                              ? darkTheme.textTheme.titleSmall
                              : lightTheme.textTheme.titleSmall),
                        
                  ],
                ),
                        
                const Padding(
                  padding: EdgeInsets.only(top:10.0),
                  child: Image(image: 
                   kIsWeb?AssetImage("images/profile.jpg"):AssetImage("assets/images/profile.jpg")),
                )
              ],
                        ),
            ),
        ],
      ),
    );
  }
}
