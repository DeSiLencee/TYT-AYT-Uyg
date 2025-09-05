import 'package:flutter/material.dart';
import 'package:tyt_ayt/topic_cards_page.dart';
import 'package:tyt_ayt/topic_list_page.dart';

class AytSaySubjectsPage extends StatelessWidget {
  const AytSaySubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> subjects = [
      {'name': 'Matematik', 'icon': Icons.calculate_outlined},
      {'name': 'Geometri', 'icon': Icons.architecture},
      {'name': 'Fizik', 'icon': Icons.science_outlined},
      {'name': 'Kimya', 'icon': Icons.biotech_outlined},
      {'name': 'Biyoloji', 'icon': Icons.eco_outlined},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('AYT SAY Konuları'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
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
              'Polinomlar',
              'II. Dereceden Denklemler',
              'Karmaşık Sayılar',
              'Parabol',
              'Eşitsizlikler',
              'Logaritma',
              'Diziler',
              'Trigonometri',
              'Limit',
              'Türev',
              'İntegral',
              'Permütasyon ve Kombinasyon',
              'Olasılık',
              'Binom'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Matematik',
                  topics: mathTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Biyoloji') {
            final List<String> biyolojiTopics = [
              'Sinir Sistemi',
              'Endokrin Sistem',
              'Duyu Organları',
              'Destek ve Hareket Sistemi',
              'Sindirim Sistemi',
              'Dolaşım ve Bağışıklık Sistemi',
              'Solunum Sistemi',
              'Boşaltım Sistemi',
              'Üriner Sistem',
              'Üreme Sistemi ve Embriyonik Gelişim',
              'Komünite ve Popülasyon Ekolojisi',
              'Nükleik Asitler',
              'Genetik Şifre ve Protein Sentezi',
              'Canlılık ve Enerji',
              'Fotosentez ve Kemosentez',
              'Hücresel Solunum',
              'Bitki Biyolojisi',
              'Canlılar ve Çevre'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Biyoloji',
                  topics: biyolojiTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Kimya') {
            final List<String> kimyaTopics = [
              'Kimya Bilimi',
              'Atom ve Yapısı',
              'Periyodik Sistem',
              'Kimyasal Türler Arası Etkileşim',
              'Kimyasal Hesaplamalar',
              'Modern Atom Teorisi',
              'Gazlar',
              'Çözeltiler',
              'Kimyasal Tepkimelerde Enerji',
              'Kimyasal Tepkimelerde Hız',
              'Kimyasal Tepkimelerde Denge',
              'Asit-Baz Dengesi',
              'Çözünürlük Dengesi',
              'Kimya ve Elektrik',
              'Organik Kimya'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Kimya',
                  topics: kimyaTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Fizik') {
            final List<String> fizikTopics = [
              'Vektörler',
              'Kuvvet, Tork ve Denge',
              'Kütle Merkezi',
              'Basit Makineler',
              'Hareket',
              'Newton’un Hareket Yasaları',
              'İş, Güç ve Enerji',
              'Atışlar',
              'İtme ve Momentum',
              'Elektrik Alan ve Potansiyel',
              'Paralel Levhalar ve Sığa',
              'Manyetik Alan ve Manyetik Kuvvet',
              'İndüksiyon, Alternatif Akım ve Transformatörler',
              'Çembersel Hareket',
              'Dönme, Yuvarlanma ve Açısal Momentum',
              'Kütle Çekim ve Kepler Yasaları',
              'Basit Harmonik Hareket',
              'Dalga Mekaniği ve Elektromanyetik Dalgalar',
              'Atom Modelleri',
              'Büyük Patlama ve Parçacık Fiziği',
              'Radyoaktivite',
              'Özel Görelilik',
              'Kara Cisim Işıması',
              'Fotoelektrik Olay ve Compton Olayı',
              'Modern Fiziğin Teknolojideki Uygulamaları'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Fizik',
                  topics: fizikTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Geometri') {
            final List<String> geometriTopics = [
              'Doğruda ve Üçgende Açı',
              'Özel Üçgenler(Dik-ikiz-Eş)',
              'Açıortay ve Kenarortay',
              'Açı Kenar Bağıntıları',
              'Üçgende Alan ve Benzerlik',
              'Çokgenler',
              'Noktanın Analitiği',
              'Doğrunun Analitiği',
              'Dönüşüm Geometrisi',
              'Çember ve Daire 2',
              'Özel Dörtgenler',
              'Katı Cisimler',
              'Çemberin Analitiği'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Geometri',
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
