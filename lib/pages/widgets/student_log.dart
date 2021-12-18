import 'dart:io';

import 'package:face_net_authentication/pages/widgets/onlineAttendance.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LoginINList extends StatefulWidget {
  @override
  _LoginINListState createState() => _LoginINListState();
}

class _LoginINListState extends State<LoginINList> {
  File _image;
  final picker = ImagePicker();

  Future getImage(imagesource) async {
    // ignore: deprecated_member_use
    final pickedFile = await picker.getImage(source: imagesource);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Admin'),
        backgroundColor: Color(0xFF4d4d4d),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ViewAttendees()));
                },
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFF4d4d4d),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'view attending students',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  getImage(ImageSource.camera);
                },
                child: Column(
                  children: [
                    // Container(
                    //   margin: EdgeInsets.only(left: 10),
                    //   child: TextButton(
                    //     onPressed: () {
                    //       _selectImageSource();
                    //     },
                    //     child: Row(
                    //       children: [
                    //         Icon(
                    //           FontAwesomeIcons.images,
                    //           color: Colors.redAccent,
                    //         ),
                    //         Container(
                    //           width: 10,
                    //         ),
                    //         Text(
                    //           "Photo",
                    //           style: TextStyle(color: Colors.white),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 50,
                        // width: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xFF4d4d4d),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                              'Take facial snapshots of attending students',
                              style: TextStyle(color: Colors.white)),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    _image != null
                        ? Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            child: Image.file(_image),
                          )
                        : Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                              // image: DecorationImage(
                              //     fit: BoxFit.cover,
                              //     // image: AssetImage('assets/logo.png')
                              //     ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                          ),
                    SizedBox(height: 30),
                    GestureDetector(
                        onTap: () {
                          final snackBar =
                              SnackBar(content: Text('saved to cloud'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Center(child: Text('Save')))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  throw UnimplementedError();
}
