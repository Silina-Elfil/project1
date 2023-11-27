import 'package:flutter/material.dart';

class ChineseZodiacSignPage extends StatefulWidget {
  const ChineseZodiacSignPage({super.key});

  @override
  State<ChineseZodiacSignPage> createState() => _ChineseZodiacSignPageState();
}

class _ChineseZodiacSignPageState extends State<ChineseZodiacSignPage> {
  @override
  Widget build(BuildContext context) {
    final chineseZodiacSign = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chinese Zodiac Sign'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 16.0),
          Text(chineseZodiacSign.toString(),
              style: const TextStyle(fontSize: 24)),
        ],),
      ),
    );
  }
}