

import 'package:flutter/material.dart';

class ViewAttendees extends StatefulWidget {
  @override
  _ViewAttendeesState createState() => _ViewAttendeesState();
}

class _ViewAttendeesState extends State<ViewAttendees> {
    //   double width;
    // @override
    // void initState() {
    //   super.initState();
    //   Timer(
    //     Duration(seconds: 10),
    //     () => Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => SignIn(),
    //       ),
    //     ),
    //   );
    // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4d4d4d),
        title: Text('Attending Students'),
      ),
    );
  }
}
