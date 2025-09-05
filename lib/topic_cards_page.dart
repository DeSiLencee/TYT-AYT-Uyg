import 'package:flutter/material.dart';

class TopicCardsPage extends StatefulWidget {
  final String subjectName;
  final List<Map<String, String>>? cards;

  const TopicCardsPage({super.key, required this.subjectName, this.cards});

  @override
  State<TopicCardsPage> createState() => _TopicCardsPageState();
}

class _TopicCardsPageState extends State<TopicCardsPage> {
  late final PageController _pageController;
  late final List<Map<String, String>> _cards;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _cards = widget.cards ??
        List.generate(
          10,
          (index) => ({
            'title': 'Örnek Bilgi ${index + 1}',
            'content':
                "Bu konu için içerik yakında eklenecektir.",
          }),
        );
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subjectName),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _cards.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return _buildTopicCard(_cards[index]);
              },
            ),
          ),
          _buildNavigationControls(),
        ],
      ),
    );
  }

  Widget _buildTopicCard(Map<String, String> cardData) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              cardData['title']!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              cardData['content']!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationControls() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            onPressed: _currentPage > 0
                ? () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                : null, // Disable if it's the first page
            icon: const Icon(Icons.arrow_back),
            label: const Text('Geri'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Text(
            '${_currentPage + 1} / ${_cards.length}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: _currentPage < _cards.length - 1
                ? () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                : null, // Disable if it's the last page
            icon: const Text('İleri'),
            label: const Icon(Icons.arrow_forward),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
