import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/themes/appTheme.dart';

class Notify extends StatefulWidget {
  const Notify({ Key? key }) : super(key: key);

  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
     final appTheme = Provider.of<AppTheme>(context);
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
   children: [
            Text(
                'Earlier Today',
                style: appTheme.isDarkTheme
                    ? darkTheme.textTheme.titleMedium
                    : lightTheme.textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 16,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://media.istockphoto.com/photos/side-view-of-one-young-woman-picture-id1134378235?k=20&m=1134378235&s=612x612&w=0&h=0yIqc847atslcQvC3sdYE6bRByfjNTfOkyJc5e34kgU=',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'username, username and 63',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.labelMedium
                                : lightTheme.textTheme.labelMedium,
                          ),
                          Row(
                            children: [
                              Text(
                                'others',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.labelMedium
                                    : lightTheme.textTheme.labelMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  'liked your video. 2h',
                                  style: appTheme.isDarkTheme
                                      ? darkTheme.textTheme.titleSmall
                                      : lightTheme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 12.0),
                      child: Container(
                        width: 60,
                        child: Image(
                            image: kIsWeb
                                ? AssetImage("images/profile.jpg")
                                : AssetImage("assets/images/profile.jpg")),
                      ),
                    ),
                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 16,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://media.istockphoto.com/photos/side-view-of-one-young-woman-picture-id1134378235?k=20&m=1134378235&s=612x612&w=0&h=0yIqc847atslcQvC3sdYE6bRByfjNTfOkyJc5e34kgU=',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 new users started',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.labelMedium
                                : lightTheme.textTheme.labelMedium,
                          ),
                          Row(
                            children: [
                              Text(
                                '',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.labelMedium
                                    : lightTheme.textTheme.labelMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  'Following you. 2h',
                                  style: appTheme.isDarkTheme
                                      ? darkTheme.textTheme.titleSmall
                                      : lightTheme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 61.0, top: 16.0),
                      child: Container(
                          width: 100.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            // Border color
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextButton(onPressed: () {  },
                          child: Text('Follow Back',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),)),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                child: Divider(
                  color: Colors.grey.withOpacity(0.5),
                  thickness: 0.6,
                ),
              ),





                 Text(
                'Yesterday',
                style: appTheme.isDarkTheme
                    ? darkTheme.textTheme.titleMedium
                    : lightTheme.textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 16,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://media.istockphoto.com/photos/side-view-of-one-young-woman-picture-id1134378235?k=20&m=1134378235&s=612x612&w=0&h=0yIqc847atslcQvC3sdYE6bRByfjNTfOkyJc5e34kgU=',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'username, username and 63',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.labelMedium
                                : lightTheme.textTheme.labelMedium,
                          ),
                          Row(
                            children: [
                              Text(
                                'others',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.labelMedium
                                    : lightTheme.textTheme.labelMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  'liked your video. 2h',
                                  style: appTheme.isDarkTheme
                                      ? darkTheme.textTheme.titleSmall
                                      : lightTheme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 12.0),
                      child: Container(
                        width: 60,
                        child: Image(
                            image: kIsWeb
                                ? AssetImage("images/profile.jpg")
                                : AssetImage("assets/images/profile.jpg")),
                      ),
                    ),
                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 16,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://media.istockphoto.com/photos/side-view-of-one-young-woman-picture-id1134378235?k=20&m=1134378235&s=612x612&w=0&h=0yIqc847atslcQvC3sdYE6bRByfjNTfOkyJc5e34kgU=',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 new users started',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.labelMedium
                                : lightTheme.textTheme.labelMedium,
                          ),
                          Row(
                            children: [
                              Text(
                                '',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.labelMedium
                                    : lightTheme.textTheme.labelMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  'Following you. 2h',
                                  style: appTheme.isDarkTheme
                                      ? darkTheme.textTheme.titleSmall
                                      : lightTheme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 61.0, top: 16.0),
                      child: Container(
                          width: 100.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            // Border color
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextButton(onPressed: () {  },
                          child: Text('Follow Back',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),)),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 16,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://media.istockphoto.com/photos/side-view-of-one-young-woman-picture-id1134378235?k=20&m=1134378235&s=612x612&w=0&h=0yIqc847atslcQvC3sdYE6bRByfjNTfOkyJc5e34kgU=',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 new users started',
                            style: appTheme.isDarkTheme
                                ? darkTheme.textTheme.labelMedium
                                : lightTheme.textTheme.labelMedium,
                          ),
                          Row(
                            children: [
                              Text(
                                '',
                                style: appTheme.isDarkTheme
                                    ? darkTheme.textTheme.labelMedium
                                    : lightTheme.textTheme.labelMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  'Following you. 2h',
                                  style: appTheme.isDarkTheme
                                      ? darkTheme.textTheme.titleSmall
                                      : lightTheme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 61.0, top: 16.0),
                      child: Container(
                          width: 100.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            // Border color
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextButton(onPressed: () {  },
                          child: Text('Follow Back',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),)),
                    ),
                  ],
                ),
              ),

   ],
    );
  }
}
