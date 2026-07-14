void main() {
  print('--- DARTPAD HESAP MAKİNESİ TÜM TESTLER ---\n');
  
  double sayi1 = 15.0; 
  double sayi2 = 5.0;

  print('GİRİLEN SAYILAR: $sayi1 ve $sayi2\n');
  print('-----------------------------------------');

  
  hesapMakinesi(sayi1, sayi2, '+');
  print('-----------------------------------------');

  hesapMakinesi(sayi1, sayi2, '-');
  print('-----------------------------------------');

  hesapMakinesi(sayi1, sayi2, '*');
  print('-----------------------------------------');

  hesapMakinesi(sayi1, sayi2, '/');
  print('-----------------------------------------');

  hesapMakinesi(sayi1, sayi2, '?');
  print('-----------------------------------------');
}

void hesapMakinesi(double sayi1, double sayi2, String islem) {
  
  if (islem == '+') {
    double sonuc = sayi1 + sayi2;
    print('İşlem: Toplama ($sayi1 + $sayi2)');
    print('Sonuç: $sonuc');
  }
  else if (islem == '-') {
    double sonuc = sayi1 - sayi2;
    print('İşlem: Çıkarma ($sayi1 - $sayi2)');
    print('Sonuç: $sonuc');
  }
  else if (islem == '*') {
    double sonuc = sayi1 * sayi2;
    print('İşlem: Çarpma ($sayi1 * $sayi2)');
    print('Sonuç: $sonuc');
  }
  else if (islem == '/') {
    if (sayi2 != 0) {
      double sonuc = sayi1 / sayi2;
      print('İşlem: Bölme ($sayi1 / $sayi2)');
      print('Sonuç: $sonuc');
    } else {
      print('İşlem: Bölme ($sayi1 / $sayi2)');
      print('Hata: Bir sayı 0\'a bölünemez!');
    }
  }
  else if (islem == '?') {
    print('İşlem: Karşılaştırma');
    if (sayi1 == sayi2) {
      print('Durum: Sayılar birbirine eşittir.');
    } else if (sayi1 > sayi2) {
      print('Durum: Birinci sayı ($sayi1), ikinci sayıdan ($sayi2) büyüktür.');
    } else {
      print('Durum: İkinci sayı ($sayi2), birinci sayıdan ($sayi1) büyüktür.');
    }
  } 
}