import 'dart:io';

void main() {
  stdout.write("Nhập số N: ");
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null) {
    print("Vui lòng nhập một số hợp lệ!");
    return;
  }

  if (isPrime(n)) {
    print("$n là số nguyên tố.");
  } else {
    print("$n không phải là số nguyên tố.");
  }
}

bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
