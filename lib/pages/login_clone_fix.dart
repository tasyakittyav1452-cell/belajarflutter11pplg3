import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/my_buttonClone.dart';
import '../components/main_textview.dart';


class LoginCloneFixPage extends StatefulWidget {
  const LoginCloneFixPage({super.key});

  @override
  State<LoginCloneFixPage> createState() => _LoginCloneFixPageState();
}

class _LoginCloneFixPageState extends State<LoginCloneFixPage> {
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

            // LOGO & JUDUL
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

            // INPUT EMAIL
            const MainTextview(text: 'Email atau nama pengguna'),
            const SizedBox(height: 8),
            MyTextfield(
              myHint: "Email atau nama pengguna",
              txtController: _emailController,
              radius: 8.0,
            ),

            const SizedBox(height: 20),

            // INPUT PASSWORD
            const MainTextview(text: 'Kata sandi'),
            const SizedBox(height: 8),
            MyTextfield(
              myHint: "Kata sandi",
              txtController: _passwordController,
              radius: 8.0,
            ),

            const SizedBox(height: 30),

            // TOMBOL MASUK
            MyButton(
              text: 'Masuk',
              onPressed: () {},
            ),

            const SizedBox(height: 20),

            // TOMBOL OPSIONAL
            Center(
              child: MyButton(
                text: 'Masuk tanpa kata sandi',
                isOutlined: true,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}