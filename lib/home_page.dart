import 'package:flutter/material.dart';
import 'package:localization_json/app_localization.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home".tr(context)),
      ),
      drawer: const Drawer(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'hello_msg'.tr(context),
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              'how_are_you'.tr(context),
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const Text(
              'This text will not be translated',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
