import '../Models/Attendance.dart';
import 'package:flutter/material.dart';
import '../Views/AddDialog.dart';

class AttendanceItem extends StatelessWidget {
  final Attendance attendance;
  final onCheckChange;
  final onDeleteItem;
  final onEditItem;

  const AttendanceItem(
      {Key? key, required this.attendance, required this.onCheckChange, required this.onDeleteItem, required this.onEditItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListTile(
            onTap: () {
              onCheckChange(attendance);
            },
            onLongPress: () {
              showDialog(
                context: context,
                builder: (ctx) =>
                    AddDialog(
                      attendance: attendance,
                      title: 'Editar Nome',
                      btnText: 'Editar',
                      updateFunction: onEditItem,
                    ),
              );
            },
            tileColor: Colors.white,
            leading: Icon(attendance.checked ? Icons.check_box : Icons
                .check_box_outline_blank,
              color: Colors.teal,
              size: 30,
            ),
            title: Text(attendance.name!,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  decoration: attendance.checked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none
              ),
            ),
            trailing: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
              ),
              child: IconButton(
                onPressed: () {
                  onDeleteItem(attendance);
                },
                icon: Icon(Icons.delete),
                color: Colors.white,
                padding: EdgeInsets.all(2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
