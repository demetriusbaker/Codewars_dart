List<int> reverseList(List<int> list) => [for (var i = list.length - 1; i >= 0; i--) list[i]];

void main(List<String> args) {
  print(reverseList([1, 2, 3, 4]));
}