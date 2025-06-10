
import 'dart:io';
void main(){

    var name="jeevandas";
    var age=20;
    var height=5.8;

    print("hello ,I am $name\nI am $age years old\nMy height is $height feet\nthis is my first dart program");

    print("tell me about you");
    print("name: ");
    var name1=stdin.readLineSync();
    print("age: ");
    var age1=stdin.readLineSync();
    print("height: ");
    var height1=stdin.readLineSync();
    print("hello,$name1\n tnakyou to be a part of my first dart program\nyou are $age1 years old\n and your height is $height1 feet\nyou are awesome");

}