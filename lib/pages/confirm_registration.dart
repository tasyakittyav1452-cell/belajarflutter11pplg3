import 'package:flutter_application_1/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Data Konfirmasi Pendaftaran:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text("Nama : ${controller.nama}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Jenis Kelamin : ${controller.jenisKelamin}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Alamat : ${controller.alamat}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("No WA : ${controller.noWa}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Email : ${controller.email}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Hobi : ${controller.hobi}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
                child: const Text("Kembali / Oke", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}