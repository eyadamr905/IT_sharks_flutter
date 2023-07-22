import 'dart:io';
void main() {
  Calcluator calcluator = Calcluator();
 int num1, num2;
  String opreat;
  while (true) {
    try {
      print("Please enter first number ");
      num1 = int.parse(stdin.readLineSync()!);
      print("Please enter the operator +,-,*,/  /* q to exit the program */" );
      opreat = stdin.readLineSync()!;
      if (opreat == 'q') break; 
      print("Please enter second number ");
      num2 = int.parse(stdin.readLineSync()!);
      switch (opreat) {
        case '+':
          print(calcluator.addation(num1, num2));
          break;
        case '-':
          print(calcluator.subtraction(num1, num2));
          break;
        case '*':
          print(calcluator.multiplication(num1, num2));
          break;
        case '/':
          print(calcluator.divide(num1, num2));
          break;
        default:
          print("Not supported operation");
          break;
      }
    } catch (e) {
      print('Something really unknown: $e');
    }
  }
}
class Calcluator {
  int addation(int num1, int num2) => num1 + num2;

  int subtraction(int num1, int num2) {
    return num1 - num2;
  }

  int multiplication(int num1, int num2) => num1 * num2;

  double divide(int num1, int num2) {
    return num1 / num2;
  }
}
