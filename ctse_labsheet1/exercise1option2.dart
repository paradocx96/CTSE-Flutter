// Option 2

void main() {
  int? someValue;
  increaseAndPrint(someValue);
}

void increaseAndPrint(int? value) {
  if (value != null) {
    value++;
  }
  print(value);
}