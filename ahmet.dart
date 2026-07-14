import 'dart:io';

void main() {
  print("Kullanıcı adınızı giriniz:");
  String? kullaniciAdi = stdin.readLineSync();

  String isim = kullaniciAdi ?? "Misafir";

  if (isim.isEmpty) {
    isim = "Misafir";
  }

  late String mesaj;
  mesaj = "Hoş geldin, $isim";

  print(mesaj);

  if (kullaniciAdi != null && kullaniciAdi.isNotEmpty) {
    print("İsim uzunluğu: ${kullaniciAdi!.length}");
  }
}