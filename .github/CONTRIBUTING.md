# GameTrack Katkı Rehberi

## Dal (Branch) Stratejisi

- Ana dal (main branch) korumalıdır
- Özellik dalları ana daldan oluşturulmalıdır
- Format: `feature/kullaniciadi-ozellik-adi`
- Hata düzeltme dalları: `bugfix/kullaniciadi-hata-aciklamasi`

## Commit Mesaj Kuralları

### Format
Commit mesajları için şu kurallara uyun:

1. İngilizce kullanın
2. Atomic Commit kurallarına uygun olmalı
3. Aşağıdaki prefix'lerden birini kullanın:

   **feat**: Yeni özellikler için
   ```
   feat: oyun listesi sayfası eklendi
   feat: fiyat takip sistemi eklendi
   feat: kullanıcı girişi eklendi
   ```

   **fix**: Hata düzeltmeleri için
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

3. **Açık Açıklama**
   - NE ve NEDEN yapıldığını açıklayan anlamlı commit mesajları yazın
   - Kısa ama açıklayıcı olun

4. **Bağımsız Değişiklikler**
   - Farklı özellikler veya düzeltmeler ayrı commit'lerde olmalı
   - Büyük değişiklikleri daha küçük, mantıklı commit'lere bölün

## Pull Request Süreci

1. TASKS.md dosyasını değişikliklerinizle güncelleyin
2. Testlerin geçtiğinden ve kapsama oranının korunduğundan emin olun
3. Gerekirse dokümantasyonu güncelleyin
4. En az bir kod incelemesi alın
5. Tüm yorumları çözümleyin
6. Gerekirse commit'leri birleştirin

## Kod Stili

- .cursorrules dosyasındaki stil kılavuzunu takip edin
- Commit öncesi linter çalıştırın
- Fonksiyonları küçük ve odaklı tutun
- Anlamlı yorumlar yazın
- TypeScript tiplerini doğru kullanın

## Dokümantasyon

- Gerektiğinde README.md'yi güncelleyin
- Yeni özellikleri belgeleyin
- API dokümantasyonunu güncel tutun
- Fonksiyonlar için JSDoc yorumları ekleyin

## Sorularınız mı var?

Sorularınız veya endişeleriniz için bir issue açmaktan çekinmeyin. 