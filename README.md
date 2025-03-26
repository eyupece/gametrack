# GameTrack

Oyun ve platform fiyat karşılaştırma & pazar analizi uygulaması.

## Özellikler

- Oyun ve abonelik servisleri fiyat takibi
- Platform karşılaştırması (Steam, Epic Games, vb.)
- Fiyat değişimi bildirimleri
- İndirim tahminleri (AI destekli)
- Kişiselleştirilmiş fiyat alarmları
- Çapraz platform desteği

## Teknoloji Altyapısı

- Frontend: Flutter (Android & iOS)
- Backend: Firebase
  - Cloud Firestore (Veritabanı)
  - Firebase Authentication (Kimlik Doğrulama)
  - Cloud Functions (Sunucu Tarafı İşlemler)
  - Firebase Hosting (Web Dağıtımı)
- Veri Toplama: 
  - Web Scraping (BeautifulSoup, Scrapy)
  - API Entegrasyonları
- Makine Öğrenmesi: Python (Scikit-learn, TensorFlow)

## Başlangıç

### Gereksinimler

- Flutter SDK
- Firebase CLI
- Python 3.8+
- VS Code veya Android Studio
- Firebase Projesi

### Kurulum

1. Projeyi klonlayın
```bash
git clone https://github.com/eyupece/gametrack.git
cd gametrack
```

2. Flutter bağımlılıklarını yükleyin
```bash
flutter pub get
```

3. Firebase projesini yapılandırın
```bash
firebase init
# Firestore, Authentication, Functions ve Hosting'i seçin
```

4. Python bağımlılıklarını yükleyin
```bash
pip install -r requirements.txt
```

5. Uygulamayı çalıştırın
```bash
flutter run
```

## Proje Yapısı

```
gametrack/
├── lib/
│   ├── models/       # Veri modelleri
│   ├── screens/      # Uygulama ekranları
│   ├── widgets/      # Flutter widget'ları
│   ├── services/     # Firebase servisleri
│   ├── utils/        # Yardımcı fonksiyonlar
│   └── main.dart     # Ana uygulama dosyası
├── firebase/
│   ├── functions/    # Cloud Functions
│   └── firestore/    # Firestore kuralları
├── scripts/
│   └── scraping/     # Veri toplama scriptleri
├── assets/          # Resimler ve fontlar
└── docs/            # Dokümantasyon
```

## Katkıda Bulunma

Katkıda bulunma süreci ve davranış kuralları hakkında bilgi için [CONTRIBUTING.md](CONTRIBUTING.md) dosyasını inceleyiniz.

## Görevler

Mevcut görevler ve proje ilerlemesi için [TASKS.md](TASKS.md) dosyasına bakınız.

## Maliyet

- Firebase hizmetleri (belirli kotadan sonra ücretli)
- Web scraping için proxy servisleri/VPS
- Google Play Geliştirici Hesabı (25$)
- Apple Developer Program (99$/yıl)

## Lisans

Bu proje MIT Lisansı ile lisanslanmıştır - detaylar için [LICENSE](LICENSE) dosyasına bakınız.

## **Proje Başlığı**  
**AI Destekli Oyun ve Platform Fiyat Karşılaştırma & Pazar Analizi**  

## **Projenin Konusu ve Amacı**  
Bu platform, kullanıcıların oyun ve abonelik servisleri hakkında en uygun fiyatları bulmalarına yardımcı olmak amacıyla geliştirilmektedir. Steam, Epic Games, Netflix, Spotify gibi platformlardan fiyat verilerini toplayarak, yapay zeka destekli analizlerle fiyat değişimlerini ve olası indirimleri tahmin eder. Kullanıcılar, favori oyunları ve abonelikleri için kişisel bildirimler alarak tasarruf sağlayabilirler.

## **Kullanılacak Teknolojiler ve Mühendislik Yaklaşımları**  
- **Backend & REST API:** Firebase kullanılarak geliştirilecek olup, fiyat verilerinin toplanması, kullanıcı yönetimi ve bildirim sistemlerini içeren REST API sağlanacaktır.  
- **Frontend:** Flutter ile geliştirilecek, çapraz platform desteği sayesinde hem Android hem de iOS için optimize edilecektir.  
- **Veritabanı:** Firebase Firestore kullanılacaktır.  
- **Veri Toplama:** Web Scraping (BeautifulSoup, Scrapy) ve API Entegrasyonu yöntemleriyle fiyat verileri periyodik olarak çekilecektir.  
- **Makine Öğrenmesi:** Python (Scikit-learn, TensorFlow) ile gelecekteki indirim trendleri tahmin edilecektir.  
- **API Dokümantasyonu:** Swagger kullanılacaktır.  
- **Test Süreçleri:** Postman ile API testleri gerçekleştirilecektir.  
- **Deployment:** Firebase Hosting ve Cloud Functions ile yapılacaktır.  

## **Maliyet Araştırması**  
- Firebase'in Firestore veritabanı, kimlik doğrulama ve cloud functions gibi hizmetlerinde belirli bir kota sonrası ücretlendirme olabilir.  
- Web scraping için ücretli proxy servisleri veya VPS gerekebilir.  
- Google Play Geliştirici Hesabı için 25$, Apple Developer Program üyeliği için 99$ gerekmektedir.  

## **İş Sağlığı ve Güvenliği Açısından Sakıncalar**  
- Proje, dijital ortamda geliştirileceği için fiziksel bir risk teşkil etmemektedir. Ancak uzun süreli ekran kullanımı nedeniyle göz yorgunluğu ve ergonomik oturma düzenine dikkat edilmesi gerekmektedir.  

