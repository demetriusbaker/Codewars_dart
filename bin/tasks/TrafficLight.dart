import 'package:test/test.dart';

String updateLight(String current) => current == "green" ? "yellow" : current == "yellow" ? "red" : "green";

main() {
  test("current light is green", () {
    expect(updateLight("green"), equals("yellow"));
  });
  test("current light is yellow", () {
    expect(updateLight("yellow"), equals("red"));
  });
  test("current light is red", () {
    expect(updateLight("red"), equals("green"));
  });
}
