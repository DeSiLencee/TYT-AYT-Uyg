
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyt_ayt/settings_page.dart';
import 'package:tyt_ayt/theme_notifier.dart';
import 'package:tyt_ayt/tyt_subjects_page.dart';
import 'package:tyt_ayt/ayt_say_subjects_page.dart';
import 'package:tyt_ayt/ayt_soz_subjects_page.dart';
import 'package:tyt_ayt/games_page.dart';
import 'package:tyt_ayt/past_questions_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(ThemeMode.dark), // Default to dark mode
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'TYT AYT Hazırlık',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: themeNotifier.themeMode,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePageContent(),
    GamesPage(),
    SettingsPage(),
  ];

  static const List<String> _appBarTitles = <String>[
    'Anasayfa',
    'Oyunlar',
    'Ayarlar',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Oyunlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  String? _selectedSubject;
  String? _selectedYear;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              // Hızlı Quiz action
            },
            icon: const Icon(Icons.flash_on),
            label: const Text('Hızlı Quiz'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 70), // Even larger button
              textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Full-width TYT Card
          SizedBox(
            width: double.infinity,
            child: _buildExamCard(
              context,
              title: 'TYT',
              icon: Icons.school,
              color: Colors.orange.shade300,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TytSubjectsPage()),
                );
              },
              isWide: true,
            ),
          ),
          const SizedBox(height: 16),
          // Two AYT Cards side-by-side
          Row(
            children: <Widget>[
              Expanded(
                child: _buildExamCard(
                  context,
                  title: 'AYT SAY',
                  icon: Icons.calculate,
                  color: Colors.blue.shade300,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AytSaySubjectsPage()),
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildExamCard(
                  context,
                  title: 'AYT SÖZ',
                  icon: Icons.history_edu,
                  color: Colors.green.shade300,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AytSozSubjectsPage()),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Start of Çıkmış Sorular section
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PastQuestionsPage()),
              );
            },
            icon: const Icon(Icons.history),
            label: const Text('Çıkmış Sorular'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 60),
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const Spacer(), // Pushes the quote card to the bottom
          // Quote of the Day Card
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Günün Sözü',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '"Yapabildiğimiz her şeyi yapsaydık, buna kendimiz bile şaşardık."',
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.8)),
                  ),
                  const SizedBox(height: 8),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '- Thomas Edison',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16), // Some padding from the bottom
        ],
      ),
    );
  }

  Widget _buildExamCard(BuildContext context,
      {required String title,
      required IconData icon,
      required Color color,
      required VoidCallback onTap,
      bool isWide = false}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: isWide ? 120 : 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50, color: color),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubjectButton(String subjectName) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedSubject = subjectName;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: _selectedSubject == subjectName ? Colors.deepPurple : Colors.blueGrey,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: Text(
            subjectName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildYearButton(String year) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedYear = year;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _selectedYear == year ? Colors.deepPurple : Colors.blueGrey,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      child: Text(
        year,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
