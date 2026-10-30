import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanCounter(),
    );
  }
}

class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

class _HalamanCounterState extends State<HalamanCounter> {
  int angka = 0;

  // Menambah angka
  void tambah() {
    setState(() {
      angka++;
    });
  }

  // Mengurangi angka
  void kurang() {
    setState(() {
      angka--;
    });
  }

  // Mengembalikan angka ke nol
  void reset() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              '$angka',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: kurang,
                  child: const Icon(
                      Icons.remove,
                      color: Colors.blue,
                  ),
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: tambah,
                  child: const Icon(
                      Icons.add,
                      color: Colors.blue,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: reset,
              child: const Text(
                  'Reset',
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
