bool setAlarm(bool employed, bool vacation) => employed && !vacation;

void main(List<String> args) {
  print(setAlarm(true, true));
  print(setAlarm(false, true));
  print(setAlarm(false, false));
  print(setAlarm(true, false));
}