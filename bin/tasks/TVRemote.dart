import "package:test/test.dart";

void main() {
  test("Misc", () {
    expect(tv_remote("does"), equals(16));
    expect(tv_remote("your"), equals(23));
    expect(tv_remote("solution"), equals(33));
    expect(tv_remote("work"), equals(20));
    expect(tv_remote("for"), equals(12));
    expect(tv_remote("these"), equals(27));
    expect(tv_remote("words"), equals(25));
    expect(tv_remote("codewars"), equals(36));
  });
}

int tv_remote(String word) {
  Map map = {
    'a': [0, 0],
    'b': [0, 1],
    'c': [0, 2],
    'd': [0, 3],
    'e': [0, 4],
    '1': [0, 5],
    '2': [0, 6],
    '3': [0, 7],
    'f': [1, 0],
    'g': [1, 1],
    'h': [1, 2],
    'i': [1, 3],
    'j': [1, 4],
    '4': [1, 5],
    '5': [1, 6],
    '6': [1, 7],
    'k': [2, 0],
    'l': [2, 1],
    'm': [2, 2],
    'n': [2, 3],
    'o': [2, 4],
    '7': [2, 5],
    '8': [2, 6],
    '9': [2, 7],
    'p': [3, 0],
    'q': [3, 1],
    'r': [3, 2],
    's': [3, 3],
    't': [3, 4],
    '.': [3, 5],
    '@': [3, 6],
    '0': [3, 7],
    'u': [4, 0],
    'v': [4, 1],
    'w': [4, 2],
    'x': [4, 3],
    'y': [4, 4],
    'z': [4, 5],
    '_': [4, 6],
    '/': [4, 7],
  };

  int sum = 0;
  String neoWord = "a$word";
  for (int i = 1; i < neoWord.length; i++) {
    int x2 = map[neoWord[i]][0], x1 = map[neoWord[i - 1]][0];
    int y2 = map[neoWord[i]][1], y1 = map[neoWord[i - 1]][1];
    int first = abSubstract(x2, x1);
    int second = abSubstract(y2, y1);
    sum += first + second;
  }

  return sum + word.length;
}

int abSubstract(int a, int b) => a - b > b - a ? a - b : b - a;
