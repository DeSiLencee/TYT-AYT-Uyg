import 'package:flutter/material.dart';
import 'package:tyt_ayt/topic_cards_page.dart';
import 'package:tyt_ayt/topic_list_page.dart';

class AytSozSubjectsPage extends StatelessWidget {
  const AytSozSubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> subjects = [
      {'name': 'Tarih 1/2', 'icon': Icons.history_edu_outlined},
      {'name': 'Coğrafya 1/2', 'icon': Icons.public_outlined},
      {'name': 'Felsefe', 'icon': Icons.psychology_outlined},
      {'name': 'Din Kültürü', 'icon': Icons.mosque_outlined},
      {'name': 'Edebiyat', 'icon': Icons.book_outlined},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('AYT SÖZ Konuları'),
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
          if (subject['name'] == 'Edebiyat') {
            final List<String> edebiyatTopics = [
              'Sözcükte ve Söz Gruplarında Anlam',
              'Cümlede Anlam',
              'Parçada Anlam',
              'Dil Bilgisi',
              'Metin Türleri',
              'Şiir Bilgisi',
              'Edebi Sanatlar',
              'İslamiyet Öncesi Türk Edebiyatı ve Geçiş Dönemi',
              'Halk Edebiyatı',
              'Divan Edebiyatı',
              'Tanzimat Edebiyatı',
              'Servet-İ Fünun Ve Fecr-İ Ati Edebiyatı',
              'Milli Edebiyat',
              'Cumhuriyet Dönemi Edebiyatı',
              'Batı Edebiyat Akımları'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Edebiyat',
                  topics: edebiyatTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Tarih 1/2') {
            final List<String> tarihTopics = [
              'Tarih ve Zaman',
              'İnsanlığın İlk Dönemleri',
              'Orta Çağ’da Dünya',
              'İlk ve Orta Çağlarda Türk Dünyası',
              'İslam Medeniyetinin Doğuşu',
              'Türklerin İslamiyet\'i Kabulü ve İlk Türk İslam Devletleri',
              'Yerleşme ve Devletleşme Sürecinde Selçuklu Türkiyesi',
              'Beylikten Devlete Osmanlı',
              'Devletleşme Sürecinde Savaşçılar ve Askerler',
              'Dünya Gücü Osmanlı',
              'Sultan ve Osmanlı Merkez Teşkilatı',
              'Değişen Dünya Dengeleri Karşısında Osm.Siy.',
              'Değişim Çağında Avrupa ve Osmanlı',
              'Uluslararası İlişkilerde Denge Stratejisi (1774-1914)',
              'Devrimler Çağında Değişen Devlet-Toplum İlişkileri',
              'Sermaye ve Emek',
              'XX. Yüzyıl Başlarında Osm. Devleti ve Dünya',
              'İnkılap Tarihi Tüm Konular',
              'Milli Mücadele',
              'Atatürkçülük ve Türk İnkılabı',
              'İki Savaş Arasındaki Dönemde Türkiye ve Dünya',
              'II. Dünya Savaşı Sürecinde – Sonrasında Türkiye ve Dünya',
              'XXI. Yüzyılın Eşiğinde Türkiye ve Dünya',
              'Soğuk Savaş Dönemi',
              'Yumuşama Dönemi',
              'Küreselleşen Dünya'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Tarih 1/2',
                  topics: tarihTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Din Kültürü') {
            final List<String> dinTopics = [
              'Dünya ve Ahiret',
              'Allah, İnsan İlişkisi',
              'Kur’an’a Göre Hz. Muhammed',
              'Kur’an’da Bazı Kavramlar',
              'Kur’an’dan Mesajlar',
              'İnançla İlgili Meseleler',
              'Yahudilik ve Hristiyanlık',
              'İslam ve Bilim',
              'Anadolu’da İslam',
              'İslam Düşüncesinde Tasavvufi Yorumlar ve Mezhepler',
              'Güncel Dini Meseleler',
              'Hint ve Çin Dinleri'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Din Kültürü',
                  topics: dinTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Felsefe') {
            final List<String> felsefeTopics = [
              'Felsefe ve Bilim',
              'Bilgi Felsefesi',
              'Varlık Felsefesi',
              'Ahlak Felsefesi',
              '20.yy.Felsefesi',
              'Din Felsefesi',
              'Mantığa Giriş',
              'Klasik Mantık',
              'Mantık ve Dil',
              'Psikoloji Bilimini Tanıyalım',
              'Psikolojinin Temel Süreçleri',
              'Öğrenme Bellek Düşünme',
              'Ruh Sağlığının Temelleri',
              'Sosyolojiye Giriş',
              'Birey ve Toplum',
              'Toplumsal Yapı',
              'Toplumsal Değişme ve Gelişme',
              'Toplum ve Kültür',
              'Toplumsal Kurumlar'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Felsefe',
                  topics: felsefeTopics,
                ),
              ),
            );
          } else if (subject['name'] == 'Coğrafya 1/2') {
            final List<String> cografyaTopics = [
              'Dünya’nın Şekli ve Hareketleri',
              'Coğrafi Konum',
              'Harita Bilgisi',
              'İç Kuvvetler',
              'Ekosistem',
              'İlk Medeniyet ve Şehirler/İlk Uygarlıklar',
              'Nüfus Politikaları',
              'Türkiye’de Nüfus ve Yerleşme',
              'Ekonomik Faaliyetler ve Doğal Kaynaklar',
              'Göç ve Şehirleşme',
              'Türkiye Ekonomisi',
              'Türkiye’nin Jeopolitik Konumu',
              'Bölgesel Kalkınma Projeleri',
              'İklim ve Yer şekilleri',
              'Küresel ve Bölgesel Örgütler',
              'Ülkeler Arası Etkileşimler',
              'Üretim Alanları ve Ulaşım Ağları/Küresel Ticaret',
              'Bölgeler ve Ülkeler',
              'Çevre ve Toplum',
              'Doğal Afetler'
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicListPage(
                  subjectName: 'AYT Coğrafya 1/2',
                  topics: cografyaTopics,
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
