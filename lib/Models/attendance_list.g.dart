// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AttendanceList on _AttendanceList, Store {
  late final _$attendancesAtom =
      Atom(name: '_AttendanceList.attendances', context: context);

  @override
  ObservableList<Attendance> get attendances {
    _$attendancesAtom.reportRead();
    return super.attendances;
  }

  @override
  set attendances(ObservableList<Attendance> value) {
    _$attendancesAtom.reportWrite(value, super.attendances, () {
      super.attendances = value;
    });
  }

  late final _$_AttendanceListActionController =
      ActionController(name: '_AttendanceList', context: context);

  @override
  void addAttendanceItem(String name) {
    final _$actionInfo = _$_AttendanceListActionController.startAction(
        name: '_AttendanceList.addAttendanceItem');
    try {
      return super.addAttendanceItem(name);
    } finally {
      _$_AttendanceListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onEditItem(Attendance attendance, String name) {
    final _$actionInfo = _$_AttendanceListActionController.startAction(
        name: '_AttendanceList.onEditItem');
    try {
      return super.onEditItem(attendance, name);
    } finally {
      _$_AttendanceListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onCheckChange(Attendance attendance) {
    final _$actionInfo = _$_AttendanceListActionController.startAction(
        name: '_AttendanceList.onCheckChange');
    try {
      return super.onCheckChange(attendance);
    } finally {
      _$_AttendanceListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onDeleteItem(Attendance attendance) {
    final _$actionInfo = _$_AttendanceListActionController.startAction(
        name: '_AttendanceList.onDeleteItem');
    try {
      return super.onDeleteItem(attendance);
    } finally {
      _$_AttendanceListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
attendances: ${attendances}
    ''';
  }
}
