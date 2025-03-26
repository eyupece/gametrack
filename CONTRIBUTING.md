# GameTrack'e Katkıda Bulunma

GameTrack'e katkıda bulunmak istediğiniz için teşekkür ederiz! Bu belge, katkıda bulunma sürecindeki yönergeleri ve talimatları içermektedir.

## Davranış Kuralları

- Saygılı ve kapsayıcı olun
- Profesyonel bir dil kullanın
- Başkalarının öğrenmesine ve gelişmesine yardımcı olun
- Yapıcı geri bildirimlere odaklanın

## Dal (Branch) Stratejisi

- Ana dal (main branch) korumalıdır
- Özellik dalları ana daldan oluşturulmalıdır
- Format: `feature/kullaniciadi-ozellik-adi`
- Hata düzeltme dalları: `bugfix/kullaniciadi-hata-aciklamasi`

## Commit Mesajları

Commit mesajları için şu kurallara uyun:

1. İngilizce kullanın
2. Büyük harfle başlayın
3. Emir kipi kullanın ("Add" yerine "Added" değil)
4. İlk satırı 50 karakterin altında tutun
5. Gerekirse detaylı açıklama ekleyin

Örnek:
```
Add user authentication system

- Implement JWT token generation
- Add password hashing
- Create login/register endpoints
```

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