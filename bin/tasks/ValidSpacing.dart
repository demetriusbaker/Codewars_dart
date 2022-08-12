import "package:test/test.dart";

void main() {
  test("Sample tests", () {
    expect(valid_spacing("Hello world"), equals(true));
    expect(valid_spacing(" Hello world"), equals(false));
    expect(valid_spacing("Hello world "), equals(false));
    expect(valid_spacing("Hello"), equals(true));
    expect(valid_spacing("Hello  world"), equals(false));
    expect(valid_spacing("Helloworld"), equals(true));
  });
}

bool valid_spacing(String text) => text.isEmpty
    ? true
    : text == ' '
        ? false
        : text[0] != ' ' &&
            text[text.length - 1] != ' ' &&
            !text.contains('  ');
