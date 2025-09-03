import 'dart:io';

void main() {
  //List để lưu thông tin sinh viên
  List<Map<String, dynamic>> danhSachSV = [];

  stdout.write("Nhap so luong sinh vien: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("\n--- Sinh vien thu ${i + 1} ---");
    stdout.write("Ma SV: ");
    String maSV = stdin.readLineSync()!;
    stdout.write("Ho ten: ");
    String hoTen = stdin.readLineSync()!;
    stdout.write("Que quan: ");
    String queQuan = stdin.readLineSync()!;
    stdout.write("Diem: ");
    double diem = double.parse(stdin.readLineSync()!);

    //Map
    danhSachSV.add({
      "maSV": maSV,
      "hoTen": hoTen,
      "queQuan": queQuan,
      "diem": diem,
    });
  }

  print("\n=== DANH SACH SINH VIEN ===");
  danhSachSV.forEach((sv) {
    print("[${sv['maSV']}] ${sv['hoTen']} - ${sv['queQuan']} - Diem: ${sv['diem']}");
  });

  //Lambda lọc sinh viên 
  print("\n=== Sinh viên DO (điem >= 5) ===");
  danhSachSV.where((sv) => sv['diem'] >= 5).forEach((sv) {
    print("${sv['hoTen']} - Diem: ${sv['diem']}");
  });

  danhSachSV.sort((a, b) => b['diem'].compareTo(a['diem']));
  print("\n=== Danh sach xep theo diem giam dan ===");
  danhSachSV.forEach((sv) {
    print("${sv['hoTen']} - Diem: ${sv['diem']}");
  });
}
