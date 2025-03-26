import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Renk paleti sabitleri
  static const Color primaryBlue = Color(0xFF6662FC);
  static const Color accentRed = Color(0xFFFF2F56);
  static const Color darkBlue = Color(0xFF1E2A78);
  static const Color purple = Color(0xFF8B62FC); // Mor ton eklendi
  static const Color textGrey = Color(0xFF5A585B);
  static const Color white = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              primaryBlue.withOpacity(0.95),
              purple.withOpacity(0.9),
              darkBlue.withOpacity(0.85),
            ],
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildProfileHeader(),
              _buildEditProfileButton(),
              _buildStats(),
              _buildPlatforms(),
              _buildPriceAlerts(),
              Expanded(child: _buildRecentActivity()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: white, width: 2),
                  image: const DecorationImage(
                    image: NetworkImage('https://placeholder.com/user'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: _buildProfileBadge(),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@gameHunter',
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
                Text(
                  'İstanbul, Türkiye',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings, color: white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildProfileBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: accentRed.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: white, width: 1),
      ),
      child: Text(
        'PRO',
        style: GoogleFonts.nunito(
          color: white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildEditProfileButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: purple.withOpacity(0.2),
          foregroundColor: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: white.withOpacity(0.2)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.edit, size: 18),
            const SizedBox(width: 8),
            Text(
              'Profili Düzenle',
              style: GoogleFonts.nunito(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStats() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatItem('Takip Edilen\nOyunlar', '42'),
          _buildStatItem('Toplam\nTasarruf', '₺1.2K'),
          _buildStatItem('Aktif\nBildirimler', '15'),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.nunito(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: white,
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontSize: 14,
            color: white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }

  Widget _buildPlatforms() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Takip Edilen Platformlar',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: white,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildPlatformIcon('Steam', Icons.games),
              _buildPlatformIcon('Epic', Icons.gamepad),
              _buildPlatformIcon('Xbox', Icons.sports_esports),
              _buildPlatformIcon('PS', Icons.play_circle),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPlatformIcon(String name, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: purple.withOpacity(0.9), // Platform ikonları için mor renk
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: white.withOpacity(0.2), width: 1),
          ),
          child: Icon(icon, color: white, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: GoogleFonts.nunito(
            color: white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildPriceAlerts() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fiyat Alarmları',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Tümünü Gör',
                  style: GoogleFonts.nunito(
                    color: accentRed,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildPriceAlertItem(
            'Elden Ring',
            'Hedef: ₺400',
            'Şu an: ₺699',
          ),
          const SizedBox(height: 8),
          _buildPriceAlertItem(
            'God of War Ragnarök',
            'Hedef: ₺500',
            'Şu an: ₺899',
          ),
        ],
      ),
    );
  }

  Widget _buildPriceAlertItem(String game, String target, String current) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: darkBlue.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: white.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game,
                style: GoogleFonts.nunito(
                  color: white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                target,
                style: GoogleFonts.nunito(
                  color: accentRed,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Text(
            current,
            style: GoogleFonts.nunito(
              color: white.withOpacity(0.7),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentActivity() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Son Aktiviteler',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textGrey,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                _buildActivityItem(
                  'Cyberpunk 2077',
                  'Fiyat düştü: ₺299 → ₺149',
                  '2 saat önce',
                  true, // İndirim olduğu için kırmızı
                ),
                _buildActivityItem(
                  'Red Dead Redemption 2',
                  'İndirim başladı: %60 indirim',
                  '5 saat önce',
                  true, // İndirim olduğu için kırmızı
                ),
                _buildActivityItem(
                  'FIFA 24',
                  'Takip listesine eklendi',
                  '1 gün önce',
                  false, // Normal aktivite
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(
      String title, String description, String time, bool isDiscount) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textGrey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: GoogleFonts.nunito(
              fontSize: 14,
              color: isDiscount
                  ? accentRed
                  : primaryBlue, // İndirimler kırmızı, diğerleri mavi
            ),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: GoogleFonts.nunito(
              fontSize: 12,
              color: textGrey.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        selectedItemColor: primaryBlue,
        unselectedItemColor: textGrey.withOpacity(0.5),
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Keşfet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: 'Ekle'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Bildirimler'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
