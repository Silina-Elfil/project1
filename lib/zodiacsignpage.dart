import 'package:flutter/material.dart';
import 'zodiacsign.dart';

class ZodiacSignPage extends StatefulWidget {
  const ZodiacSignPage({Key? key}) : super(key: key);

  @override
  State<ZodiacSignPage> createState() => _ZodiacSignPageState();
}

class _ZodiacSignPageState extends State<ZodiacSignPage> {
  @override
  Widget build(BuildContext context) {
    final zodiacSign = ModalRoute.of(context)!.settings.arguments as ZodiacSign;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Zodiac Sign'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 16.0),
          Text(zodiacSign.toString(),
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
        ],),
      ),
    );
  }
}
