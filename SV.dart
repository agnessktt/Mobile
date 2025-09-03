import 'dart:io';

class Person {
  String hoTen;
  String ngaySinh;
  String gioiTinh;
  String queQuan;

  Person(this.hoTen, this.ngaySinh, this.gioiTinh, this.queQuan);
}

class SinhVien extends Person {
  String maSV;
  double diemCC, diemKT, diemThi;
  double diemTongKet = 0;

  SinhVien(String hoTen, String ngaySinh, String gioiTinh, String queQuan,
      this.maSV, this.diemCC, this.diemKT, this.diemThi)
      : super(hoTen, ngaySinh, gioiTinh, queQuan) {
    tinhDiemTongKet();
  }

  void tinhDiemTongKet() {
    diemTongKet = diemCC * 0.1 + diemKT * 0.3 + diemThi * 0.6;
  }

  String xepLoai() {
    if (diemTongKet >= 9) return "Xuat sac";
    if (diemTongKet >= 8) return "Gioi";
    if (diemTongKet >= 7) return "Kha";
    if (diemTongKet >= 5) return "Trung binh";
    if (diemTongKet >= 3.5) return "Yeu";
    return "Kem";
  }

  bool isDo() => diemTongKet >= 5;
  bool isTruot() => diemTongKet < 5;

  void hienthidaydu() {
    print("[$maSV] $hoTen - ĐTK: ${diemTongKet.toStringAsFixed(2)} - ${xepLoai()}");
  }
}

void main() {
  stdout.write("Nhap so luong sinh vien: ");
  int n = int.parse(stdin.readLineSync()!);

  List<SinhVien> dsSV = [];

  for (int i = 0; i < n; i++) {
    print("\n--- Sinh vien thu ${i + 1} ---");
    stdout.write("Ho ten: ");
    String hoTen = stdin.readLineSync()!;
    stdout.write("Ngay sinh: ");
    String ngaySinh = stdin.readLineSync()!;
    stdout.write("Gioi tinh: ");
    String gioiTinh = stdin.readLineSync()!;
    stdout.write("Que quan: ");
    String queQuan = stdin.readLineSync()!;
    stdout.write("Ma SV: ");
    String maSV = stdin.readLineSync()!;
    stdout.write("Diem chuyen can: ");
    double diemCC = double.parse(stdin.readLineSync()!);
    stdout.write("Diem kiem tra: ");
    double diemKT = double.parse(stdin.readLineSync()!);
    stdout.write("Diem thi: ");
    double diemThi = double.parse(stdin.readLineSync()!);

    dsSV.add(SinhVien(hoTen, ngaySinh, gioiTinh, queQuan, maSV, diemCC, diemKT, diemThi));
  }

  print("\n=== DANH SACH SINH VIEN ===");
  dsSV.forEach((sv) => sv.hienthidaydu());

  print("\n=== Sinh vien co ĐTK > 5 ===");
  dsSV.where((sv) => sv.diemTongKet > 5).forEach((sv) => sv.hienthidaydu());

  print("\n=== Sinh vien DO ===");
  dsSV.where((sv) => sv.isDo()).forEach((sv) => sv.hienthidaydu());

  print("\n=== Sinh vien TRUOT ===");
  dsSV.where((sv) => sv.isTruot()).forEach((sv) => sv.hienthidaydu());

  print("\n=== XEP LOAI ===");
  dsSV.forEach((sv) {
    print("${sv.hoTen} - ĐTK: ${sv.diemTongKet.toStringAsFixed(2)} - ${sv.xepLoai()}");
  });
}
