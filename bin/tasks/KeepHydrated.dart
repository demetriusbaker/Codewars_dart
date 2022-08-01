import 'package:test/expect.dart';
import 'package:test/test.dart';

int litres(num drinkTime) => drinkTime ~/ 2;

main() {
  test("Testing for 2", () => expect(litres(2), equals(1)));
  test("Testing for 1.4", () => expect(litres(1.4), equals(0)));
  test("Testing for 12.3", () => expect(litres(12.3), equals(6)));
  test("Testing for 0.82", () => expect(litres(0.82), equals(0)));
  test("Testing for 11.8", () => expect(litres(11.8), equals(5)));
  test("Testing for 1787", () => expect(litres(1787), equals(893)));
  test("Testing for 0", () => expect(litres(0), equals(0)));
}
