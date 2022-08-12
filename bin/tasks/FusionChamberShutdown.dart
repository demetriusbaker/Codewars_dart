import "package:test/test.dart";

void main() {
  group("fixed tests", () {
    test("burner(45, 11, 100)",
        () => expect(burner(45, 11, 100), equals([5, 45, 0])));
    test("burner(354, 1023230, 0)",
        () => expect(burner(354, 1023230, 0), equals([0, 0, 354])));
    test("burner(939, 3, 694)",
        () => expect(burner(939, 3, 694), equals([1, 346, 0])));
    test("burner(215, 41, 82100)",
        () => expect(burner(215, 41, 82100), equals([20, 215, 0])));
    test("burner(113, 0, 52)",
        () => expect(burner(113, 0, 52), equals([0, 26, 0])));
    test("burner(306, 227, 329)",
        () => expect(burner(306, 227, 329), equals([113, 108, 0])));
    test("burner(272, 71, 129)",
        () => expect(burner(272, 71, 129), equals([35, 47, 0])));
  });
}

List<int> burner(int c, int h, int o) {
  int h20 = react(h != 0 && o != 0, min(h ~/ 2, o));
  int co2 = react(c != 0 && o > h20, min(c, (o - h20) ~/ 2));
  int ch4 = react(c > co2 && h > h20 * 2, min((c - co2), (h - h20 * 2) ~/ 4));
  return [h20, co2, ch4];
}

int react(bool condition, int reaction) => condition ? reaction : 0;

int min(int a, int b) => a < b ? a : b;
