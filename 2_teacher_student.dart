class Person {
  String name;
  String address;

  Person(this.name, this.address);

  @override
  String toString() {
    return 'Person{name: $name, address: $address}';
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher(super.name, super.address);

  @override
  String toString() {
    return 'Teacher: ${super.toString()}';
  }

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }
    courses.remove(course);
    return true;
  }
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(super.name, super.address);

  @override
  String toString() {
    return 'Student: ${super.toString()}';
  }

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses = courses.length;
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print('${courses[i]}: ${grades[i]}');
    }
  }

  double getAverageGrade() {
    int sum = 0;
    for (int i = 0; i < grades.length; i++) {
      sum += grades[i];
    }
    return sum / grades.length;
  }
}

void main() {
  Teacher t1 = Teacher("Ahmed", "Cairo");
  t1.addCourse("Math");
  t1.addCourse("Physics");
  print(t1);
  t1.removeCourse("Math");
  print(t1);

  Student s1 = Student("Ali", "Cairo");
  s1.addCourseGrade("Math", 90);
  s1.addCourseGrade("Physics", 80);
  s1.printGrades();
  print(s1.getAverageGrade());
}
