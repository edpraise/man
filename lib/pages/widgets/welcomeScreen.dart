import 'package:face_net_authentication/pages/widgets/student_log.dart';
import 'package:flutter/material.dart';

class CourseSelectionScreen extends StatefulWidget {
  @override
  _CourseSelectionScreenState createState() => _CourseSelectionScreenState();
}

class _CourseSelectionScreenState extends State<CourseSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formState = GlobalKey<FormState>();
    TextEditingController usernameCtrl = TextEditingController();
    TextEditingController passwordCtrl = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xFF4d4d4d),
      appBar: AppBar(
        backgroundColor: Color(0xFF4d4d4d),
        title: Text('Admin'),
      ),
      body: Form(
        key: _formState,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  child: Container(
                    height: 40,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: usernameCtrl,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Field cannot be empty';
                        } else if (value == 'admin') {
                          return null;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        // hintText: 'olueakenny02',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),

                        //   disabledBorder: OutlineInputBorder(
                        //   //   borderRadius:
                        //   //       BorderRadius.all(Radius.circular(4)),
                        //   //   borderSide: BorderSide(
                        //   //       width: 1, color: secondaryColor),
                        //   // ),
                        //   border: new OutlineInputBorder(
                        //       borderSide:
                        //           new BorderSide(color: secondaryColor)
                      ),

                      // ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  child: Container(
                    height: 40,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: passwordCtrl,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Field cannot be empty';
                        } else if (value != 'admin123') {
                          return null;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        // hintText: 'olueakenny02',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.password, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),

                        //   disabledBorder: OutlineInputBorder(
                        //   //   borderRadius:
                        //   //       BorderRadius.all(Radius.circular(4)),
                        //   //   borderSide: BorderSide(
                        //   //       width: 1, color: secondaryColor),
                        //   // ),
                        //   border: new OutlineInputBorder(
                        //       borderSide:
                        //           new BorderSide(color: secondaryColor)
                      ),
                      // ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (_formState.currentState.validate()) {
                    // passwordCtrl.value.text.contains('admin123');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginINList()));
                  } else {}
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Center(child: Text('Login')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
