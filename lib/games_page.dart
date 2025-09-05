import 'package:flutter/material.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  String? _selectedSubject;
  String? _selectedGameType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            // Subject Selection Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSubjectButton('TYT'),
                _buildSubjectButton('AYT-SAY'),
                _buildSubjectButton('AYT-SÖZ'),
              ],
            ),
            const SizedBox(height: 40),
            // Game Type Buttons
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _selectedGameType = 'Çoktan Seçmeli';
                });
              },
              icon: const Icon(Icons.check_circle_outline),
              label: const Text('Çoktan Seçmeli'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 70),
                textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                backgroundColor: _selectedGameType == 'Çoktan Seçmeli' ? Colors.deepPurple : Colors.blueGrey,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _selectedGameType = 'Doğru Yanlış';
                });
              },
              icon: const Icon(Icons.link),
              label: const Text('Doğru Yanlış'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 70),
                textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                backgroundColor: _selectedGameType == 'Doğru Yanlış' ? Colors.deepPurple : Colors.blueGrey,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _selectedGameType = 'Eşleştir';
                });
              },
              icon: const Icon(Icons.compare_arrows),
              label: const Text('Eşleştir'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 70),
                textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                backgroundColor: _selectedGameType == 'Eşleştir' ? Colors.deepPurple : Colors.blueGrey,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const Spacer(), // Pushes the Start button to the bottom
            ElevatedButton(
              onPressed: _selectedSubject != null && _selectedGameType != null
                  ? () {
                      // TODO: Implement game start logic
                      print('Başlat: $_selectedSubject - $_selectedGameType');
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Başlat'),
            ),
            const SizedBox(height: 20),
          ],
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
}