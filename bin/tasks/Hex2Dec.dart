int hexToDec(String hexString) => int.parse(hexString, radix: 16);

void main(List<String> args) {
  print(hexToDec('FF')); // 255
  print(hexToDec('10')); // 16
}