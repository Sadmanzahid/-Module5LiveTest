class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);
}
class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
    print("Department: $department\n");
  }
}
class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
    print("Programming Language: $programmingLanguage\n");
  }
}
void main() {
  Manager m = Manager("Siam", 60000, "HR");
  Developer d = Developer("Zahid", 80000, "Dart");

  m.displayInfo();
  d.displayInfo();
}
