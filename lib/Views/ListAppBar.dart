import 'package:attendance_register/Components/AttendanceItem.dart';
import 'package:flutter/material.dart';

import '../Components/BottomButton.dart';
import '../Models/Attendance.dart';

class ListAppBar extends StatefulWidget {
  @override
  State<ListAppBar> createState() => _ListAppBarState();
}

class _ListAppBarState extends State<ListAppBar> {
  final attendanceList = Attendance.attendanceList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        //elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.menu,
              size: 30,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(right: 60),
            ),
            Text('Lista de presença',
              style: TextStyle(color: Colors.black),

            )
          ],
        ),
      ),
      body: Container(
          height: 570,
          child: ListView(
              children: [
                for(Attendance attendance in attendanceList)
                  AttendanceItem(
                    attendance: attendance,
                    onCheckChange: _onCheckChange,
                    onDeleteItem: _onDeleteItem,
                    onEditItem: _onEditItem,
                  )
              ]
          )
      ),
      floatingActionButton: BottomButton(addAttendanceItem: _addAttendanceItem),
    );
  }

  void _onCheckChange(Attendance attendance) {
    setState(() {
      attendance.checked = !attendance.checked;
    });
  }

  void _onDeleteItem(Attendance attendance) {
    //could be id too with removeAt()
    setState(() {
      attendanceList.remove(attendance);
    });
  }

  void _onEditItem(Attendance attendance, String name){
    setState(() {
        attendance.name = name;
    });
  }

   void _addAttendanceItem(String name) {
    setState(() {
      attendanceList.add(
          Attendance(
              id: DateTime
                  .now()
                  .millisecond
                  .toString(),
              name: name
          )
      );
    });
  }
}