String booleanToString(bool b) => "$b";

void main(List<String> args) {
  var str = booleanToString(true);
  print(str);
  str = booleanToString(false);
  print(str);
}
