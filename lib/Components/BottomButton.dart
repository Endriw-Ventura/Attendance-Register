import 'package:flutter/material.dart';

import '../Views/AddDialog.dart';

class BottomButton extends StatelessWidget {
  BottomButton({Key? key, required this.addAttendanceItem}) : super(key: key);
  final addAttendanceItem;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (ctx) => AddDialog(
                attendance: null,
                updateFunction: addAttendanceItem,
                title: 'Criar Nome',
                btnText: 'Criar'
              ),
            );
          },
          child: Container(
            height: 50,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.person_add,
                    color: Colors.white,
                    size: 30
                ),
                Flex(
                    direction: Axis.horizontal,
                    children: [
                      Text('Criar Item',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      )
                    ]
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
