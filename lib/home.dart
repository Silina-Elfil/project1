import 'package:flutter/material.dart';
import 'zodiacSignPage.dart';
import 'zodiacSign.dart';
import 'chineseZodiacSignPage.dart';
import 'chineseZodiacSign.dart';

class Home extends StatefulWidget {
  const Home({super.key});

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

      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ZodiacSignPage(),
          settings: RouteSettings(arguments: ZodiacSign(day, month))));
    } catch (e) {
      print(e);
    }
  }

  void openChineseZodiacSignPage() {
    try {
      int year = int.parse(_controllerYear.text);

      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ChineseZodiacSignPage(),
          settings:
              RouteSettings(arguments: ChineseZodiacSign(year))));
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Your Zodiac Sign'),
        centerTitle: true,
      ),
      body: Container(


    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/imgbg.jpg"),fit: BoxFit.cover,)
    // image: DecorationImage(
    // image: AssetImage("/imgbg.jpg"),
    // fit: BoxFit.cover,
    // ),
    ),

      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            const Text(
              'Enter your date of birth',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '     Day',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                  ),
                ),
                const SizedBox(width: 16.0),
                SizedBox(
                  height: 50.0,
                  width: 200.0,
                  child: TextField(
                    controller: _controllerDay,
                    style: const TextStyle(fontSize: 18.0,color: Colors.white),
                    keyboardType: TextInputType.number,

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 4, 28, 129),
                      border: OutlineInputBorder(),
                      hintText: 'day',
                      hintStyle:  TextStyle(fontSize: 18.0,color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Month',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                  ),
                ),
                const SizedBox(width: 16.0),
                SizedBox(
                  height: 50.0,
                  width: 200.0,
                  child: TextField(
                    controller: _controllerMonth,
                    style: const TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 4, 28, 129),
                      border: OutlineInputBorder(),
                      hintText: 'month',
                      hintStyle:  TextStyle(fontSize: 18.0,color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '    Year',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                  ),
                ),
                const SizedBox(width: 16.0),
                SizedBox(
                  height: 50.0,
                  width: 200.0,
                  child: TextField(
                    controller: _controllerYear,
                    style: const TextStyle(fontSize: 18.0, color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 4, 28, 129),
                      border: OutlineInputBorder(),
                      hintText: 'year',
                      hintStyle:  TextStyle(fontSize: 18.0,color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: openZodiacSignPage,
                  child: const Text('Check Zodiac Sign'),
                ),
                const SizedBox(width: 50.0),
                ElevatedButton(
                  onPressed: openChineseZodiacSignPage,
                  child: const Text('Check Chinese Zodiac Sign'),
                ),
              ],
            )
          ],
        ),
      ),


      ));
  }
}
