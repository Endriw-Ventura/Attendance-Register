import 'package:attendance_register/Models/attendance_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'Views/listAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Provider<AttendanceList>(
        create: (BuildContext context) => AttendanceList(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Observer(builder: (_) => ListAppBar())
        )
    );
  }
}


