//## Program 2: Perform Mathematical Operations with Functions
//Write a Dart program that performs two mathematical operations using functions.

import 'dart:io';

int sum(num1, num2){
    //declaration of the variable result.
    int result = 0;
    //perform the addition
    result = num1 + num2;
    return result;
}
int substrction(num1, num2){
    int result = 0;

    result = num1 - num2;

    return result;
}

void main(){
    //taking in user input
    print("Enter Num1");
    int? number1 = int.parse(stdin.readLineSync()!);
    print("Enter Num2");
    int? number2 = int.parse(stdin.readLineSync()!);

    //doing the calculations using the functions
    int add_result = sum(number1, number2);
    int sub_result = substrction(number1, number2);

    //displaying the output on the stdout
    print("Sum of the numbers is: $add_result");

    print("Subtraction of the numbers is: $sub_result");
}
