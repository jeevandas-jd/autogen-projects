
import 'dart:io';
void greeting(var name,var place){
    print("Hello $name, welcome to $place!");
}
int sum(int a,int b){
    return a+b;
}
void main(){
    print("enter your name please: ");
    var name=stdin.readLineSync();
    print("enter your place please: ");
    var place=stdin.readLineSync();
    greeting(name, place);
    print("enter two numbers to sum: ");
    var num1=int.parse(stdin.readLineSync()!);
    var num2=int.parse(stdin.readLineSync()!);
    var result=sum(num1,num2);
    print("The sum of $num1 and $num2 is $result");

}