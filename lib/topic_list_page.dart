import 'package:flutter/material.dart';
import 'package:tyt_ayt/topic_cards_page.dart';

class TopicListPage extends StatelessWidget {
  final String subjectName;
  final List<String> topics;

  const TopicListPage({super.key, required this.subjectName, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subjectName),
      ),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: ListTile(
              title: Text(topic, style: const TextStyle(fontWeight: FontWeight.w500)),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicCardsPage(subjectName: topic),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
