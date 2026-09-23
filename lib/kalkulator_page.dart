import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  // Controller untuk menangkap input angka
  final TextEditingController _a1Controller = TextEditingController();
  final TextEditingController _a2Controller = TextEditingController();

  // Variabel penampung hasil perhitungan
  String _hasil = "0";

  // Fungsi Perhitungan Matematika
  void _hitung(String operasi) {
    double? a1 = double.tryParse(_a1Controller.text);
    double? a2 = double.tryParse(_a2Controller.text);

    if (a1 == null || a2 == null) {
      setState(() {
        _hasil = "Input tidak valid!";
      });
      return;
    }

    double res = 0;
    if (operasi == '+') res = a1 + a2;
    if (operasi == '-') res = a1 - a2;
    if (operasi == 'x') res = a1 * a2;
    if (operasi == '/') {
      if (a2 == 0) {
        setState(() {
          _hasil = "Tidak bisa bagi 0";
        });
        return;
      }
      res = a1 / a2;
    }

    setState(() {
      // Menghilangkan angka desimal .0 jika hasilnya bulat
      _hasil = res % 1 == 0 ? res.toInt().toString() : res.toStringAsFixed(2);
    });
  }

  // Fungsi Reset Data
  void _reset() {
    setState(() {
      _a1Controller.clear();
      _a2Controller.clear();
      _hasil = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- 1. INPUT ANGKA PERTAMA (A1) ---
            TextField(
              controller: _a1Controller,
              keyboardType: TextInputType.number, // Hanya angka
              decoration: InputDecoration(
                labelText: 'Angka 1 (A1)',
                prefixIcon: const Icon(Icons.pin),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16),

            // --- 2. INPUT ANGKA KEDUA (A2) ---
            TextField(
              controller: _a2Controller,
              keyboardType: TextInputType.number, // Hanya angka
              decoration: InputDecoration(
                labelText: 'Angka 2 (A2)',
                prefixIcon: const Icon(Icons.pin),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 24),

            // --- 3. TOMBOL OPERATOR (+, -, x, /) ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonOperator('+', Colors.blue, () => _hitung('+')),
                _buildButtonOperator('-', Colors.orange, () => _hitung('-')),
                _buildButtonOperator('x', Colors.purple, () => _hitung('x')),
                _buildButtonOperator('/', Colors.teal, () => _hitung('/')),
              ],
            ),
            const SizedBox(height: 30),

            // --- 4. TAMPILAN HASIL ---
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'HASIL',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _hasil,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // --- 5. TOMBOL RESET ---
            ElevatedButton.icon(
              onPressed: _reset,
              icon: const Icon(Icons.refresh),
              label: const Text(
                'RESET',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget bantuan untuk membuat tombol operator seragam
  Widget _buildButtonOperator(
      String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        fixedSize: const Size(60, 60), // Berbentuk kotak presisi
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}