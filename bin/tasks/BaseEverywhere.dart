import "package:test/test.dart";

void main() {
  group("Fixed tests", () {
    test(
        ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
        () => expect(
            base_finder(['3', '2', '3', '4', '5', '6', '7', '8', '9', '10']),
            equals(10)));
    test(
        ['1', '2', '3', '4', '5', '6', '10', '11', '12', '13'],
        () => expect(
            base_finder(['1', '2', '3', '4', '5', '6', '10', '11', '12', '13']),
            equals(7)));
  });
}

int base_finder(List<String> seq) => seq.join().split('').toSet().length;
