import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String evenOrOdd(int number) => number % 2 == 0 ? 'Even' : 'Odd';

void main(List<String> args) {
 test('Basic tests', () {
    expect(evenOrOdd(2), equals('Even'));
    expect(evenOrOdd(1), equals('Odd'));
    expect(evenOrOdd(0), equals('Even'));
    expect(evenOrOdd(7), equals('Odd'));
    expect(evenOrOdd(-1), equals('Odd'));
  });
}