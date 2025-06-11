
import 'dart:io';
void OddOrEven(int number){
    if (number % 2 == 0) {
        print("$number is an even number");
    } else {
        print("$number is an odd number");
    }
}

void main() {
    print("Enter a number to check if it's odd or even: ");
    var input = stdin.readLineSync();
    if (input != null) {
        int number = int.parse(input);
        OddOrEven(number);
    } else {
        print("Invalid input");
    }
}