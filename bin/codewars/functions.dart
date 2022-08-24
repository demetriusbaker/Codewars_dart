import 'dart:math';

isSquare(n) {
  if (n < 0) return false;
  var number = sqrt(n);
  return number == number.toInt();
}

goals(int l, int co, int c) => l + co + c;

int summation(int n) => n >= 2 ? n + summation(n - 1) : 1;

bool checkForFactor(int base, int factor) => base % factor == 0;

int findSmallestInt(List<int> arr) => arr.reduce(min);

num sum(List<num> arr) {
  num sum = 0;
  for (var a in arr) {
    sum += a;
  }
  return sum;
}

int add(int num1, int num2) {
  if (num1 == 0 && num2 == 0) return 0;
  if (num1 == 0) return num2;
  if (num2 == 0) return num1;

  List n1 = num1.toString().split('').reversed.toList();
  List n2 = num2.toString().split('').reversed.toList();
  List<int> digits = [];
  int minLength = n1.length < n2.length ? n1.length : n2.length;
  int maxLength = n1.length > n2.length ? n1.length : n2.length;

  int i = 0;
  for (; i < minLength; i++) {
    digits.add(int.parse(n1[i]) + int.parse(n2[i]));
  }

  for (; i < maxLength; i++) {
    digits.add(maxLength == n1.length ? int.parse(n1[i]) : int.parse(n2[i]));
  }

  digits = digits.reversed.toList();

  return int.parse(digits.join('').toString());
}
