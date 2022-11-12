import 'package:mobx/mobx.dart';
import '../Models/attendance.dart';
part 'attendance_list.g.dart';

class AttendanceList = _AttendanceList with _$AttendanceList;

abstract class _AttendanceList with Store {

  @observable
  ObservableList<Attendance> attendances = ObservableList<Attendance>();

  @action
  void addAttendanceItem(String name) {
    attendances.add(
        Attendance(
            DateTime
                .now()
                .millisecond
                .toString(),
            name,
            false
        )
    );
  }

  @action
  void onEditItem(Attendance attendance, String name){
    attendance.name = name;
  }

  @action
  void onCheckChange(Attendance attendance) {
    attendance.checked = !attendance.checked;
  }

  @action
  void onDeleteItem(Attendance attendance) {
    //could be id too with removeAt()
    attendances.remove(attendance);
  }
}