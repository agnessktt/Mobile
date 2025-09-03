import 'dart:io';

void main() {
  stdout.write("Nhap so thang (1 - 12): ");
  int? thang = int.tryParse(stdin.readLineSync()!);

  stdout.write("Nhap nam: ");
  int? nam = int.tryParse(stdin.readLineSync()!);

  if (thang == null || nam == null || thang < 1 || thang > 12 || nam <= 0) {
    print("Du lieu khong hop le. Vui long thu lai!");
    return;
  }

  int soNgay;
  switch (thang) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      soNgay = 31;
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      soNgay = 30;
      break;
    case 2:
      if ((nam % 400 == 0) || (nam % 4 == 0 && nam % 100 != 0)) {
        soNgay = 29;
      } else {
        soNgay = 28;
      }
      break;
    default:
      soNgay = 0; 
  }

  print("Thang $thang nam $nam co $soNgay ngay.");
}
