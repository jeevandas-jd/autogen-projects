
import 'dart:io';
void greeting(var name,var place){
    print("Hello $name, welcome to $place!");
}
int sum(int a,int b){
    print("The sum of $a and $b is ${a+b} called from sum function");
    return a+b;
}
int sumReq({required int a,required int b}){
    print("The sum of $a and $b is ${a+b}");
    return a+b;
}

int sumFunction(int a,int b ,void Function(int,int) callback){
    var result=a+b;
    callback(a,b);
    return result;
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
    print("The sum of $num1 and $num2 is ${sumFunction(num1,num2,sum)}");

    sumReq(a: num1, b: num2);

}