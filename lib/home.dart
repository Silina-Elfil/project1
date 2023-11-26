import 'package:flutter/material.dart';
import 'zodiacsignpage.dart';
import 'zodiacsign.dart';
import 'chinesezodiacsignpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controllerDay = TextEditingController();
  final TextEditingController _controllerMonth = TextEditingController();
  final TextEditingController _controllerYear = TextEditingController();

  @override

  void dispose() {
    _controllerDay.dispose();
    _controllerMonth.dispose();
    _controllerYear.dispose();
    super.dispose();
  }

  void openZodiacSignPage() {
    try {
      int day = int.parse(_controllerDay.text);
      int month = int.parse(_controllerMonth.text);
      //int year = int.parse(_controllerYear.text);

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ZodiacSignPage(),
              settings: RouteSettings(arguments: ZodiacSign(day, month))
          )
      );
    }
    catch(e) {
      print(e); // better to remove print in release version
    }
  }

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
            _buildTextFieldWithLabel('     Day'),
            const SizedBox(height: 16.0),
            _buildTextFieldWithLabel('Month'),
            const SizedBox(height: 16.0),
            _buildTextFieldWithLabel('    Year'),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: openZodiacSignPage,
                  child: const Text('Check Zodiac Sign',
                      style: TextStyle(
                          fontSize: 30.0,
                          backgroundColor: Colors.indigo)
                  ),
                ),
                const SizedBox(width: 50.0),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ChineseZodiacSignPage())
                  );
                }, child: const Text('Check Chinese Zodiac Sign'),
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
              hintText: labelText.toLowerCase().trim(),
            ),
          ),
        ),
      ],
    );
  }
}



