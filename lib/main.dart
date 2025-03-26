import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameTrack',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6662FC)),
        useMaterial3: true,
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isLoggedIn = false;

  static const Color primaryBlue = Color(0xFF6662FC);
  static const Color textGrey = Color(0xFF5A585B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Ana Sayfa içeriği gelecek',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: textGrey,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: primaryBlue,
        unselectedItemColor: textGrey.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
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

  void _onItemTapped(int index) {
    if (index == 4 && !_isLoggedIn) {
      // Profil sekmesine tıklandı ve giriş yapılmamış
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => const AuthScreen(),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }
}
