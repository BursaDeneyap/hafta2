class Ogrenci {
  String isim;
  int yas;
  int notu;

  Ogrenci(this.isim, this.yas, this.notu);

  void bilgi() {
    print("İsim: $isim");
    print("Yaş: $yas");
    print("Not: $notu");
  }
}

void main() {
  Ogrenci ogrenci1 = Ogrenci("Ali", 18, 85);
  Ogrenci ogrenci2 = Ogrenci("Ayşe", 19, 92);

  ogrenci1.bilgi();
  print("");

  ogrenci2.bilgi();
}