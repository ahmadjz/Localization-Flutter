import 'package:flutter/material.dart';
import 'package:localization_json/app_localization.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "settings".tr(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: DropdownButton<String>(
            value: 'ar',
            icon: const Icon(Icons.keyboard_arrow_down),
            items: ['ar', 'en'].map((String items) {
              return DropdownMenuItem<String>(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
