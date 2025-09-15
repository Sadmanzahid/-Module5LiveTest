class Student{
  String ? Name;
  int ?Roll;

  Student(this.Name,this.Roll);
  displayInfo(){
    print("Name: $Name");
    print("Roll No: $Roll");
  }

}
main(){
  Student s =Student("Sadman", 1);
  s.displayInfo();

}