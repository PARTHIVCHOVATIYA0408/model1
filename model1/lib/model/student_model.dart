class StudentModel {
  final Student1? student1;
  final Student2? student2;
  final Student3? student3;
  final Student4? student4;
  final Student5? student5;
  final Student6? student6;

  StudentModel({
    this.student1,
    this.student2,
    this.student3,
    this.student4,
    this.student5,
    this.student6,
  });
  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      student1: Student1.fromJson(json['stu1']),
      student2: Student2.fromJson(json['stu2']),
      student3: Student3.fromJson(json['stu3']),
      student4: Student4.fromJson(json['stu4']),
      student5: Student5.fromJson(json['stu5']),
      student6: Student6.fromJson(json['stu6']),
    );
  }
}

class Student1 { 
  final String? name;
  final int? rollnum;
  final String? course;
  final int? fees;

  Student1({
    this.fees,
    this.name,
    this.rollnum,
    this.course,
  });
  factory Student1.fromJson(Map<String, dynamic> json) {
    return Student1(
      name: json['name'],
      rollnum: json['rollno'],
      course: json['course'],
      fees: json['fees'],
    );
  }
}

class Student2 {
  final String? name;
  final int? rollnum;
  final String? course;
  final int? fees;

  Student2({
    this.name,
    this.rollnum,
    this.course,
    this.fees,
  });
  factory Student2.fromJson(Map<String, dynamic> json) {
    return Student2(
      name: json['name'],
      rollnum: json['rollno'],
      course: json['course'],
      fees: json['fees'],
    );
  }
}

class Student3 {
  final String? name;
  final int? rollnum;
  final String? course;

  Student3({
    this.name,
    this.rollnum,
    this.course,
  });
  factory Student3.fromJson(Map<String, dynamic> json) {
    return Student3(
      name: json['name'],
      rollnum: json['rollno'],
      course: json['course'],
    );
  }
}

class Student4 {
  final String? name;
  final int? rollnum;
  final String? course;

  Student4({
    this.name,
    this.rollnum,
    this.course,
  });
  factory Student4.fromJson(Map<String, dynamic> json) {
    return Student4(
      name: json['name'],
      rollnum: json['rollno'],
      course: json['course'],
    );
  }
}

class Student5 {
  final String? name;
  final int? rollnum;
  final String? course;

  Student5({
    this.name,
    this.rollnum,
    this.course,
  });
  factory Student5.fromJson(Map<String, dynamic> json) {
    return Student5(
      name: json['name'],
      rollnum: json['rollno'],
      course: json['course'],
    );
  }
}

class Student6 {
  final String? name;
  final int? rollnum;
  final String? course;

  Student6({
    this.name,
    this.rollnum,
    this.course,
  });
  factory Student6.fromJson(Map<String, dynamic> json) {
    return Student6(
      name: json['name'],
      rollnum: json['rollno'],
      course: json['course'],
    );
  }
}
