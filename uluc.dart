import 'dart:io';

void main() {
  print('=== VS CODE INTERAKTIF HESAP MAKINESI ===\n');

  double sayi1 = 0.0;
  while (true) {
    stdout.write('Lutfen 1. sayiyi girin: ');
    String? girdi1 = stdin.readLineSync()?.trim(); 
    if (girdi1 != null && girdi1.isNotEmpty) {
      double? kontrol = double.tryParse(girdi1);
      if (kontrol != null) {
        sayi1 = kontrol;
        break;
      }
    }
    print('Hata: Gecersiz bir sayi girdiniz! Tekrar deneyin.');
  }

  String islem = '';
  while (true) {
    stdout.write('Yapmak istediginiz islemi girin (+, -, *, /, ?): ');
    String? girdiIslem = stdin.readLineSync()?.trim();
    if (girdiIslem != null && ['+', '-', '*', '/', '?'].contains(girdiIslem)) {
      islem = girdiIslem;
      break;
    }
    print('Hata: Gecersiz islem! Lutfen sadece +, -, *, / veya ? girin.');
  }

  double sayi2 = 0.0;
  while (true) {
    stdout.write('Lutfen 2. sayiyi girin: ');
    String? girdi2 = stdin.readLineSync()?.trim();
    if (girdi2 != null && girdi2.isNotEmpty) {
      double? kontrol = double.tryParse(girdi2);
      if (kontrol != null) {
        sayi2 = kontrol;
        break;
      }
    }
    print('Hata: Gecersiz bir sayi girdiniz! Tekrar deneyin.');
  }

  print('\n-----------------------------------------');
  hesapMakinesi(sayi1, sayi2, islem);
  print('-----------------------------------------');
}

// Hesap makinesi fonksiyonu
void hesapMakinesi(double sayi1, double sayi2, String islem) {
  
  if (islem == '+') {
    double sonuc = sayi1 + sayi2;
    print('Islem: Toplama ($sayi1 + $sayi2)');
    print('Sonuc: $sonuc');
  }
  else if (islem == '-') {
    double sonuc = sayi1 - sayi2;
    print('Islem: Cıkarma ($sayi1 - $sayi2)');
    print('Sonuc: $sonuc');
  }
  else if (islem == '*') {
    double sonuc = sayi1 * sayi2;
    print('Islem: Carpma ($sayi1 * $sayi2)');
    print('Sonuc: $sonuc');
  }
  else if (islem == '/') {
    if (sayi2 != 0) {
      double sonuc = sayi1 / sayi2;
      print('Islem: Bolme ($sayi1 / $sayi2)');
      print('Sonuc: $sonuc');
    } else {
      print('Hata: Bir sayi 0\'a bolunemez!');
    }
  }
  else if (islem == '?') {
    print('Islem: Karsılastırma');
    if (sayi1 == sayi2) {
      print('Durum: Sayilar birbirine esittir.');
    } else if (sayi1 > sayi2) {
      print('Durum: Birinci sayi ($sayi1), ikinci sayidan ($sayi2) buyuktur.');
    } else {
      print('Durum: Ikinci sayi ($sayi2), birinci sayidan ($sayi1) buyuktur.');
    }
  }
}