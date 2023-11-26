import 'package:flutter/material.dart';
import 'zodiacsign.dart';
import 'chinesezodiacsign.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Your Zodiac Sign'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            const Text(
              'Enter your date of birth',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
            ),
            const SizedBox(height: 16.0),
            _buildTextFieldWithLabel('Day'),
            const SizedBox(height: 16.0),
            _buildTextFieldWithLabel('Month'),
            const SizedBox(height: 16.0),
            _buildTextFieldWithLabel('Year'),
            const SizedBox(height: 16.0),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ZodiacSign())
                  );
                }, child: const Text('Check Zodiac Sign'),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Chinesezodiacsign())
                  );
                }, child: const Text('Check Zodiac Sign'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldWithLabel(String labelText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelText,
          style: const TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
        ),
        const SizedBox(width: 16.0),
        SizedBox(
          height: 50.0,
          width: 300.0,
          child: TextField(
            style: const TextStyle(fontSize: 18.0),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: labelText.toLowerCase(),
            ),
          ),
        ),
      ],
    );
  }
}



