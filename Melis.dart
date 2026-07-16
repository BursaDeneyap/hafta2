import 'dart:io';
int topla(int sayi1, int sayi2) {
  return sayi1 + sayi2;
}
int kare(sayi3) {
    return sayi3 * sayi3;
}
String selamla(isim) => "Selamlar " + isim;
void main() {
  print("Toplanılacak ilk sayı giriniz: ");
  var sayi1=int.parse(stdin.readLineSync()!);
  print("Toplanılacak ikinci sayı giriniz: ");
  var sayi2=int.parse(stdin.readLineSync()!);
  print("Karesi alınacak sayı giriniz: ");
  var sayi3=int.parse(stdin.readLineSync()!);
  print("İsminizi giriniz: ");
  var isim= stdin.readLineSync()!;
  print(topla(sayi1, sayi2));
  print(kare(sayi3));
  print(selamla(isim));
}