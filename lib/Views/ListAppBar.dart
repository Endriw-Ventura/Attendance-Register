import 'package:attendance_register/Components/attendanceItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../Components/bottomButton.dart';
import '../Models/attendance.dart';
import '../Models/attendance_list.dart';

class ListAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final attendanceList = Provider.of<AttendanceList>(context);

    return Observer(
      builder: (_) => Scaffold(
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
                  for(Attendance attendance in attendanceList.attendances)
                    AttendanceItem(
                      attendance: attendance,
                      onCheckChange: attendanceList.onCheckChange,
                      onDeleteItem: attendanceList.onDeleteItem,
                      onEditItem: attendanceList.onEditItem,
                    )
                ]
            )
        ),
        floatingActionButton: BottomButton(addAttendanceItem: attendanceList.addAttendanceItem),
      ),
    );
  }
}