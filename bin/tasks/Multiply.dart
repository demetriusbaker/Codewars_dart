import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// missed ","
int multiply(int a, int b) => a * b;

void main(List<String> args) {
    test('Multiply should return the product', () {
    expect(multiply(1,1), equals(1));
  });
}