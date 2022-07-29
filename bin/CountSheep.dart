import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String countSheep(numb) => numb == 0 ? "" : numb == 1 ? "$numb sheep..." : "${countSheep(numb - 1)}$numb sheep...";

main() {
  print(countSheep(0));
  print(countSheep(1));
  print(countSheep(2));
  print(countSheep(3));

  test("Testing for 0", () => expect(countSheep(0), equals("")));
  test("Testing for 1", () => expect(countSheep(1), equals("1 sheep...")));
  test("Testing for 2", () => expect(countSheep(2), equals("1 sheep...2 sheep...")));
  test("Testing for 3", () => expect(countSheep(3), equals("1 sheep...2 sheep...3 sheep...")));
}