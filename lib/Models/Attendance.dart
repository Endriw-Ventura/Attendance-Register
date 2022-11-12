import 'package:mobx/mobx.dart';
part 'attendance.g.dart';

class Attendance = _Attendance with _$Attendance;

abstract class _Attendance with Store {
  _Attendance(this.id, this.name, this.checked);

  String? id;
  @observable
  String? name;
  @observable
  bool checked = false;
}




