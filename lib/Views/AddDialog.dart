import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../Models/attendance.dart';

class AddDialog extends StatelessWidget {
  AddDialog({Key? key,
    required this.updateFunction,
    this.attendance,
    required this.title,
    required this.btnText
  }) : super(key: key);

  final updateFunction;
  final Attendance? attendance;
  final _controller = TextEditingController();
  final String title;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => SimpleDialog(
        title: Text(title),
        children: [
          Padding(
            padding: EdgeInsets.all(18),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Digite o nome",
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              if (_controller.text.length > 0) {
                if (attendance != null) {
                  updateFunction(attendance, _controller.text); //edita o item
                } else {
                  updateFunction(_controller.text); //cria um item novo
                }
                _controller.clear();
                Navigator.of(context).pop();
              }
            },
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(14),
              child: Text(btnText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
