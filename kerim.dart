void main() {
  // Kullanıcıdan alınan veya sabit belirlenen not değeri
  double ogrenciNotu = 85.5; 
  String harfNotu;

  // Geçersiz not kontrolü
  if (ogrenciNotu < 0 || ogrenciNotu > 100) {
    print("Hata: Not 0 ile 100 arasında olmalıdır!");
    return;
  }

  // Harf notu hesaplama aralıkları
  if (ogrenciNotu >= 90) {
    harfNotu = "AA";
  } else if (ogrenciNotu >= 80) {
    harfNotu = "BA";
  } else if (ogrenciNotu >= 70) {
    harfNotu = "BB";
  } else if (ogrenciNotu >= 60) {
    harfNotu = "CB";
  } else if (ogrenciNotu >= 50) {
    harfNotu = "CC";
  } else {
    harfNotu = "FF";
  }

  // Sonucu ekrana yazdırma
  print("Öğrencinin Notu: $ogrenciNotu -> Harf Notu: $harfNotu");
}
