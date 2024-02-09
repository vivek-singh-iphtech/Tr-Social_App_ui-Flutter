import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/themes/appTheme.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 12.0,right: 12.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  foregroundImage: kIsWeb
                      ? AssetImage("images/profile.jpg")
                      : AssetImage("assets/images/profile.jpg"),
                  radius: 30,
                ),
                title: Text(
                  'Kim Delph',
                  style: appTheme.isDarkTheme
                      ? darkTheme.textTheme.titleMedium
                      : lightTheme.textTheme.titleMedium,
                ),
                subtitle: Text(
                  'Hi How are You? Are You angry?',
                  style: appTheme.isDarkTheme
                      ? darkTheme.textTheme.titleSmall
                      : lightTheme.textTheme.titleSmall,
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 9.0,right: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '34 min ago',
                        style: appTheme.isDarkTheme
                            ? darkTheme.textTheme.labelSmall
                            : lightTheme.textTheme.labelSmall,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Container(
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Center(
                            child: Text(
                              '4',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -6),
                child: Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 340.0,
                    child: Divider( 
                      color: Colors.grey.withOpacity(0.5), 
                      thickness: 0.4, 
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
