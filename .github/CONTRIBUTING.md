# GameTrack Katkı Rehberi

## Commit Mesaj Kuralları

### Format
Basit bir commit mesaj formatı kullanıyoruz:

1. **feature**: Yeni özellikler için
   ```
   feature: oyun listesi sayfası eklendi
   feature: fiyat takip sistemi eklendi
   feature: kullanıcı girişi eklendi
   ```

2. **fix**: Hata düzeltmeleri için
   ```
   fix: fiyat karşılaştırma hatası düzeltildi
   fix: giriş doğrulama hatası giderildi
   fix: API endpoint güncellendi
   ```

### Atomic Commit Kuralları

1. **Tek Sorumluluk**
   - Her commit sadece bir mantıksal değişiklik içermeli
   - Birden fazla ilgisiz değişikliği tek bir commit'te birleştirmeyin

2. **Çalışır Durumda Değişiklikler**
   - Her commit, projeyi bir çalışır durumdan başka bir çalışır duruma getirmeli
   - Her commit sonrası testler başarılı olmalı

3. **Açık Açıklama**
   - NE ve NEDEN yapıldığını açıklayan anlamlı commit mesajları yazın
   - Şimdiki zaman kullanın ("eklendi" değil "eklendi")
   - Kısa ama açıklayıcı olun

4. **Bağımsız Değişiklikler**
   - Farklı özellikler veya düzeltmeler ayrı commit'lerde olmalı
   - Büyük değişiklikleri daha küçük, mantıklı commit'lere bölün

### Örnekler

İyi commit mesajları:
```
feature: fiyat karşılaştırma grafiği eklendi
feature: kullanıcı favorileri sistemi eklendi
fix: oyun detaylarındaki null hatası düzeltildi
fix: Steam API entegrasyonu güncellendi
```

Kötü commit mesajları:
```
kod güncellendi
hatalar düzeltildi
devam ediliyor
çeşitli değişiklikler
``` 