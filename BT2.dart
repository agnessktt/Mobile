import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Nhập số N: ");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null) {
    print("Vui lòng nhập một số hợp lệ!");
    return;
  }

  if (isPerfectSquare(n)) {
    print("$n là số chính phương.");
  } else {
    print("$n không phải là số chính phương.");
  }
}

bool isPerfectSquare(int n) {
  if (n < 0) return false;
  int root = sqrt(n).toInt();
  return root * root == n;
}
