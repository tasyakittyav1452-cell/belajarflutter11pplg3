import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/controller/kalkulator_controller.dart';
import 'package:get/get.dart';


class KalkulatorPage2 extends StatelessWidget{
  KalkulatorPage2({super.key});

  final KalkulatorController controller = Get.put(KalkulatorController());

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          title: const Text("Kalkulator")),
      body: Padding(padding: const EdgeInsets.all(16.0), //jarak dari pinggir layar
      child: Column(
        children: [
          MyTextfield(
            myHint: "input angka 1",
            txtController: txtangka1,
            radius: 12,
          ),

          const SizedBox(height: 20), // jarah antar textfield

          MyTextfield(
            myHint: "input angka 2",
            txtController: txtangka2,
            radius: 12,
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children : [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3EDF7),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                ),
                onPressed: () {
                  controller.tambah(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: const Text("tambah",
                  style: TextStyle(color: Color(0xFF65558F)),
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3EDF7),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                ),
                onPressed: () {
                  controller.kurang(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: const Text("kurang",
                  style: TextStyle(color: Color(0xFF65558F)),
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3EDF7),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                ),
                onPressed: () {
                  controller.kali(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: const Text("kali",
                  style: TextStyle(color: Color(0xFF65558F)),
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3EDF7),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                ),
                onPressed: () {
                  controller.bagi(
                    double.parse(txtangka1.text) ,
                    double.parse(txtangka2.text) ,
                  );
                },
                child: const Text("bagi",
                  style: TextStyle(color: Color(0xFF65558F)),
                ),
              ),
            ]
          ),

          const SizedBox(height: 12), // jarak dari tombol ke teks hasil

          Obx(
              () => Text(
                controller.hasilHitung.toString(),
                style: TextStyle(fontSize: 18),
              )
          ),

          // Spacer untuk mendorong Card "hasil jumlah" ke paling bawah layar
          const Spacer(),

          // Card Hasil jumlah (paling bawah layar)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFEFECEF),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    ),
    );
  }
}