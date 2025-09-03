import 'dart:io';

void main() {
  stdout.write("Nhập số N (0 đến 9): ");
  int n = int.parse(stdin.readLineSync()!);

  var eng = [
    "zero","one","two","three","four",
    "five","six","seven","eight","nine"
  ];

  if (n >= 0 && n <= 9) {
    print("Tiếng Anh của $n là: ${eng[n]}");
  } else {
    print("Số không hợp lệ (chỉ nhập 0..9)");
  }
}
