import 'package:flutter/material.dart';
import '../components/my_textfield.dart'; // Import custom widget kamu

class LoginClonePage extends StatefulWidget {
  const LoginClonePage({super.key});

  @override
  State<LoginClonePage> createState() => _LoginClonePageState();
}

class _LoginClonePageState extends State<LoginClonePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // --- LOGO / JUDUL SPOTIFY ---
            const Center(
              child: Icon(
                Icons.music_note_rounded,
                size: 60,
                color: Color(0xFF1DB954),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Mendengarkan tanpa batas.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // --- INPUT EMAIL / USERNAME ---
            const Text(
              'Email atau nama pengguna',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // GUNAKAN MAINTEXTFIELD DI SINI
            MyTextfield(
              myHint: "Email atau nama pengguna",
              txtController: _emailController,
              radius: 8.0,
            ),

            const SizedBox(height: 20),

            // --- INPUT PASSWORD ---
            const Text(
              'Kata sandi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // GUNAKAN MAINTEXTFIELD DI SINI
            MyTextfield(
              myHint: "Kata sandi",
              txtController: _passwordController,
              radius: 8.0,
            ),

            const SizedBox(height: 30),

            // --- TOMBOL LOGIN UTAMA ---
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1DB954),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // --- TOMBOL MASUK TANPA KATA SANDI ---
            Center(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                child: const Text(
                  'Masuk tanpa kata sandi',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}