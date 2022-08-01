int past(int h, int m, int s) => (h * 3600 + m * 60 + s) * 1000;

main() {
  print(past(1, 0, 1)); // 3601000
}