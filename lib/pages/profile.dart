import 'dart:io';

import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:inapp_browser/inapp_browser.dart';

class Profile extends StatelessWidget {
  const Profile(this.username, {Key key, this.imagePath, this.course})
      : super(key: key);
  final String username;
  final String imagePath;
  final String course;

  // final String githubURL =
  //     "https://github.com/MCarlomagno/FaceRecognitionAuth/tree/master";

  @override
  Widget build(BuildContext context) {
    // final double mirror = math.pi;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(imagePath)),
                      ),
                    ),
                    margin: EdgeInsets.all(20),
                    width: 50,
                    height: 50,
                    // child: Transform(
                    //     alignment: Alignment.center,
                    //     child: FittedBox(
                    //       fit: BoxFit.cover,
                    //       child: Image.file(File(imagePath)),
                    //     ),
                    //     transform: Matrix4.rotationY(mirror)),
                  ),
                  // Text(
                  //   'Hi' + username + 'welcome' + "to" + 'class',
                  //   style: TextStyle(
                  //       fontSize: 22,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.w600),
                  // ),
                ],
              ),
              Text(
                'HI WELCOME,',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                username,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  InappBrowser.showPopUpBrowser(
                    context,
                    Uri.parse('https://google.com'),
                  );
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Tap to view Duration',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
                ),
              ),
              Spacer(),
              Center(
                child: AppButton(
                  text: "LOG OUT",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  color: Color(0xFFFF6161),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
