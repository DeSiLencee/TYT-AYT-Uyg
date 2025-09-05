import 'package:flutter/material.dart';

class PastQuestionsPage extends StatefulWidget {
  const PastQuestionsPage({super.key});

  @override
  State<PastQuestionsPage> createState() => _PastQuestionsPageState();
}

class _PastQuestionsPageState extends State<PastQuestionsPage> {
  String? _selectedSubject;
  String? _selectedYear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Çıkmış Sorular'),
      ),
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
                _buildSubjectButton('AYT-SÖZ'),
                _buildSubjectButton('AYT-SAY'),
              ],
            ),
            const SizedBox(height: 40),
            // Year Selection Buttons
            SizedBox(
              height: 350, // Adjust height as needed
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2.5,
                ),
                itemCount: 12, // 2025 to 2014 inclusive
                itemBuilder: (context, index) {
                  final year = 2025 - index;
                  return _buildYearButton(year.toString());
                },
              ),
            ),
            const SizedBox(height: 20),
            // Görüntüle Button
            ElevatedButton(
              onPressed: _selectedSubject != null && _selectedYear != null
                  ? () {
                      // TODO: Implement view questions logic
                      print('Görüntüle: $_selectedSubject - $_selectedYear');
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
              child: const Text('Görüntüle'),
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