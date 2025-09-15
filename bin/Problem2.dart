class person{
  String ?name;
  person(this.name);
}
class Teacher extends person{
  Teacher(super.name,this.subject);
  String ?subject;
}
main() {
  Teacher T = Teacher("sadman", "CSE");
  print(T.name);
  print(T.subject);
}