import 'dart:io'; // Sadece konsol girdi-çıktısı için gerekli kütüphane

// =========================================================================
// CUSTOM EXCEPTIONS (Özel Hata Tanımlaması)
// =========================================================================

class InvalidGradeException implements Exception {
  final double value;
  InvalidGradeException(this.value);

  @override
  String toString() => "Geçersiz Not Hatası: Değer 0 ile 100 arasında olmalıdır. Girilen değer: $value";
}

// =========================================================================
// BUSINESS LOGIC LAYER (İş Mantığı Katmanı)
// =========================================================================

class GradeService {
  
  /// Gelen ham string veriyi temizler, doğrular ve double formata dönüştürür.
  double parseAndValidateGrade(String? input) {
    if (input == null || input.trim().isEmpty) {
      throw FormatException("Girdi boş bırakılamaz.");
    }

    // Virgülü noktaya çevirerek Türkçe klavye hatalarını önleriz.
    final sanitized = input.trim().replaceAll(',', '.');
    
    final parsedValue = double.tryParse(sanitized);
    if (parsedValue == null) {
      throw FormatException("Lütfen geçerli bir sayısal değer giriniz.");
    }

    // Sınır kontrolü (0.0 - 100.0)
    if (parsedValue < 0.0 || parsedValue > 100.0) {
      throw InvalidGradeException(parsedValue);
    }

    return parsedValue;
  }

  /// Tüm Dart sürümlerinde %100 uyumlu çalışan if-else harf notu çevirici.
  String convertToLetterGrade(double grade) {
    if (grade >= 90.0 && grade <= 100.0) {
      return "AA";
    } else if (grade >= 85.0) {
      return "BA";
    } else if (grade >= 80.0) {
      return "BB";
    } else if (grade >= 75.0) {
      return "CB";
    } else if (grade >= 70.0) {
      return "CC";
    } else if (grade >= 65.0) {
      return "DC";
    } else if (grade >= 60.0) {
      return "DD";
    } else if (grade >= 50.0) {
      return "FD";
    } else {
      return "FF";
    }
  }

  /// Harf notuna göre akademik durum mesajı döner.
  String getAcademicStatusMessage(String letterGrade) {
    switch (letterGrade) {
      case "AA":
      case "BA":
      case "BB":
        return "Tebrikler, Üstün Başarı! 🎉";
      case "CB":
      case "CC":
        return "Başarılı, Geçtiniz. 👍";
      case "DC":
      case "DD":
        return "Koşullu Geçtiniz. ⚠️";
      default:
        return "Maalesef Kaldınız. 😢";
    }
  }
}

// =========================================================================
// PRESENTATION / CLIENT LAYER (Konsol / Arayüz Katmanı)
// =========================================================================

void main() {
  final gradeService = GradeService();

  print("=== 🚀 GRADESERVICE SİMÜLASYONU VE TESTLERİ ===");
  runUnitTests(gradeService);

  print("\n=== 👤 KULLANICI GİRDİSİ ÇALIŞTIRILIYOR ===");
  stdout.write("Lütfen öğrencinin notunu giriniz: ");
  final rawInput = stdin.readLineSync();

  try {
    // Giriş verisi temizleniyor ve doğrulanıyor
    final double validatedGrade = gradeService.parseAndValidateGrade(rawInput);
    
    // Harf notu hesaplanıyor
    final String letterGrade = gradeService.convertToLetterGrade(validatedGrade);
    
    // Akademik durum mesajı belirleniyor
    final String statusMessage = gradeService.getAcademicStatusMessage(letterGrade);

    print("\n✅ HESAPLAMA BAŞARILI:");
    print("----------------------------------------");
    print("🎯 Girilen Sayısal Değer : $validatedGrade");
    print("📝 Hesaplanan Harf Notu  : $letterGrade");
    print("📢 Akademik Durum        : $statusMessage");
    print("----------------------------------------");

  } on FormatException catch (e) {
    print("❌ Giriş Format Hatasi: ${e.message}");
  } on InvalidGradeException catch (e) {
    print("❌ Geçersiz Not: ${e.message}");
  }}
