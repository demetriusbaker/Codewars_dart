bool_to_word(bool b) => b ? "Yes" : "No";

main(List<String> args) {
  print(bool_to_word(true));
  print(bool_to_word(false));
}