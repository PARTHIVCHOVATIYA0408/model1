class StudentModel {
  final Student1? student1;

  StudentModel({this.student1});
  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      student1: Student1.fromJson(json['stu1']),
    );
  }
}

class Student1 {
  final String? name;
  final int? rollnum;
  final String? course;

  Student1({
    this.name,
    this.rollnum,
    this.course,
  });
  factory Student1.fromJson(Map<String, dynamic> json) {
    return Student1(
      name: json['name'],
      rollnum: json['rollno'],
      course: json['course'],
    );
  }
}
