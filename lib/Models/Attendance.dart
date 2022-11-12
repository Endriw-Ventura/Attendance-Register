class Attendance{
    String? id;
    String? name;
    bool checked;

    Attendance({required this.id, required this.name, this.checked = false});

    static List<Attendance> attendanceList(){
      return [
        Attendance(id: '0', name: 'João', checked: false),
        Attendance(id: '0', name: 'João', checked: true),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
        Attendance(id: '0', name: 'João'),
      ];
    }

}