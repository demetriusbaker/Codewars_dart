import 'package:test/expect.dart';
import 'package:test/test.dart';

chromosome_check(String s) =>
    "Congratulations! You're going to have a ${s == 'XY' ? 'son' : 'daughter'}.";

void main() {
  test('Basic tests', () {
    expect(chromosome_check('XY'),
        equals("Congratulations! You're going to have a son."));
    expect(chromosome_check('XX'),
        equals("Congratulations! You're going to have a daughter."));
  });
}
