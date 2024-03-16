
//## Program 3: Determine Grade Based on Marks
//Write a Dart program to determine the grade based on a student's marks. The program should print out the appropriate grade according to the following criteria:
//- If the marks are greater than 85, print "Excellent".
//- If the marks are between 75 and 85 (inclusive), print "Very Good".
//- If the marks are between 65 and 75 (inclusive), print "Good".
//- If the marks are below 65, print "Average".

import 'dart:io';

class Student{
    String name = '';
    String adm_no = '';
    String stud_class1 = '';
    String graded = '';

    //create an instance of the class
    Student(this.adm_no, this.name, this.stud_class1, this.graded);

    void displayInfor(){
        print("ADM NO || STUD NAME|| CLASS || GRADE");
        print("$adm_no || $name || $stud_class1 || $graded" );
    }
}
String grade(score){
    if (score > 85){
        return "Excellent";
    }else if (score > 75){
        return "Very Good";
    }else if (score > 65){
        return "Good";
    }else{
        return "Average";
    }
}
void main(){
    print("Enter Student Name:");
    String? stud_name = stdin.readLineSync();
    print("Enter Student Admission Number:");
    String? stud_adm = stdin.readLineSync();
    print("Enter Student Class:");
    String? stud_class = stdin.readLineSync();
    print("Enter Student Score:");
    int? marks = int.parse(stdin.readLineSync()!);

    String grades = grade(marks);
    print("$grades");

    var student = Student('$stud_adm', '$stud_name', '$stud_class', '$grades');

    student.displayInfor();
}
