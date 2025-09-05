import 'package:flutter/material.dart';
import 'package:tyt_ayt/topic_cards_page.dart';
import 'package:tyt_ayt/topic_list_page.dart';

class TytSubjectsPage extends StatelessWidget {
  const TytSubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> subjects = [
      {'name': 'Türkçe', 'icon': Icons.book_outlined},
      {'name': 'Matematik', 'icon': Icons.calculate_outlined},
      {'name': 'Geometri', 'icon': Icons.architecture},
      {'name': 'Tarih', 'icon': Icons.history_edu_outlined},
      {'name': 'Coğrafya', 'icon': Icons.public_outlined},
      {'name': 'Felsefe', 'icon': Icons.psychology_outlined},
      {'name': 'Din Kültürü', 'icon': Icons.mosque_outlined},
      {'name': 'Fizik', 'icon': Icons.science_outlined},
      {'name': 'Kimya', 'icon': Icons.biotech_outlined},
      {'name': 'Biyoloji', 'icon': Icons.eco_outlined},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('TYT Konuları'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2, // Adjust aspect ratio for better look
        ),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return _buildSubjectCard(context, subjects[index]);
        },
      ),
    );
  }

  Widget _buildSubjectCard(BuildContext context, Map<String, dynamic> subject) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          if (subject['name'] == 'Matematik') {
            final List<String> mathTopics = [
              'Temel Kavramlar',
              'Rasyonel Sayılar',
              'Üslü Sayılar',
              'Köklü Sayılar',
              'Bölme-Bölünebilme',
              'EBOB-EKOK',
              'Mutlak Değer',
              'Basit Eşitsizlikler',
              'Oran-Orantı',
              'Denklemler',
              'Problemler',
              'Kümeler',
              'Fonksiyonlar',
              'Polinomlar',
              'Permütasyon ve Kombinasyon',
              'Olasılık',
              'İstatistik',
              'Mantık'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Matematik',
                  topics: mathTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Türkçe') {
            final List<String> turkceTopics = [
              'Ses Bilgisi',
              'Dil Bilgisi',
              'Noktalama İşaretleri',
              'Yazım Kuralları',
              'Anlatım Bozukluğu',
              'Paragraf',
              'Cümlede Anlam',
              'Sözcükte Anlam'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Türkçe',
                  topics: turkceTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Biyoloji') {
            final List<String> biyolojiTopics = [
              'Canlıların Ortak Özellikleri',
              'Hücre ve Organelleri',
              'Canlıların Sınıflandırılması',
              'Canlılarda Madde Geçişi',
              'Canlılarda Enerji Dönüşümleri',
              'İnsanda Sistemler',
              'Kalıtım ve Evrim',
              'Ekoloji'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Biyoloji',
                  topics: biyolojiTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Kimya') {
            final List<String> kimyaTopics = [
              'Kimya Bilimi',
              'Atom ve Periyodik Sistem',
              'Kimyasal Türler Arası Etkileşimler',
              'Kimyasal Hesaplamalar',
              'Maddenin Halleri ve Özellikleri',
              'Karışımlar',
              'Asit, Baz ve Tuzlar',
              'Kimyanın Günlük Hayattaki Uygulamaları'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Kimya',
                  topics: kimyaTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Fizik') {
            final List<String> fizikTopics = [
              'Fizik Bilimine Giriş',
              'Madde ve Özellikleri',
              'Hareket ve Kuvvet',
              'Enerji ve Hareket',
              'Isı ve Sıcaklık',
              'Elektrik ve Manyetizma',
              'Dalgalar ve Optik'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Fizik',
                  topics: fizikTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Din Kültürü') {
            final List<String> dinTopics = [
              'İnanç',
              'İbadet',
              'Kur’an ve Yorumu',
              'Hz. Muhammed ve Örnekliği',
              'Ahlak ve Değerler',
              'Din ve Kültür'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Din Kültürü',
                  topics: dinTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Felsefe') {
            final List<String> felsefeTopics = [
              'Felsefeye Giriş',
              'Bilgi Felsefesi',
              'Varlık Felsefesi',
              'Ahlak Felsefesi',
              'Sanat Felsefesi',
              'Din Felsefesi',
              'Siyaset Felsefesi',
              'Bilim Felsefesi'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Felsefe',
                  topics: felsefeTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Coğrafya') {
            final List<String> cografyaTopics = [
              'Coğrafyanın Konusu ve Yöntemleri',
              'Dünya’nın Şekli ve Hareketleri',
              'Harita Bilgisi',
              'Atmosfer ve İklim Bilgisi',
              'Yer ve İç Yapı',
              'Beşeri Coğrafya',
              'Ekonomik Faaliyetler',
              'Bölgesel Coğrafya',
              'Doğal Afetler ve Çevre Sorunları'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Coğrafya',
                  topics: cografyaTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Tarih') {
            final List<String> tarihTopics = [
              'Tarihin Bilimi ve Yöntemleri',
              'Uygarlığın Doğuşu ve İlk Uygarlıklar',
              'İlk Türk Devletleri',
              'İslam Tarihi ve Türk–İslam Devletleri',
              'Türkiye Tarihi',
              'Osmanlı Devleti Siyasi Tarihi',
              'Osmanlı Kültür ve Medeniyeti',
              '20. Yüzyılda Osmanlı Devleti',
              'Kurtuluş Savaşı Hazırlık Dönemi',
              'Kurtuluş Savaşı Cepheleri',
              'Cumhuriyet Dönemi İnkılapları',
              'Atatürk İlkeleri ve Dış Politika'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Tarih',
                  topics: tarihTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Geometri') {
            final List<String> geometriTopics = [
              'Temel Geometri',
              'Üçgenler',
              'Çokgenler ve Dörtgenler',
              'Çember ve Daire',
              'Analitik Geometri',
              'Katı Cisimler'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'TYT Geometri',
                  topics: geometriTopics,
                ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicCardsPage(subjectName: subject['name']!),
              ),
            );
          }
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(subject['icon'], size: 50, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 10),
            Text(
              subject['name'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
