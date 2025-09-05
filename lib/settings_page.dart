import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyt_ayt/theme_notifier.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final isDarkMode = themeNotifier.themeMode == ThemeMode.dark;

    return ListView(
      children: <Widget>[
        SwitchListTile(
          title: const Text('Karanlık Mod'),
          value: isDarkMode,
          onChanged: (value) {
            themeNotifier.toggleTheme(value);
          },
          secondary: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('Hakkında'),
          onTap: () {
            // Hakkında sayfasına yönlendirme
          },
        ),
        ListTile(
          leading: const Icon(Icons.star_rate_outlined),
          title: const Text('Uygulamayı Değerlendir'),
          onTap: () {
            // Mağaza sayfasına yönlendirme
          },
        ),
        ListTile(
          leading: const Icon(Icons.privacy_tip_outlined),
          title: const Text('Gizlilik Politikası'),
          onTap: () {
            // Gizlilik politikası sayfasına yönlendirme
          },
        ),
      ],
    );
  }
}
