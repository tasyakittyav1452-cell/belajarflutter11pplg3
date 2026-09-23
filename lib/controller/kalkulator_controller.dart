import 'package:get/get.dart';

class KalkulatorController extends GetxController {

  var hasilHitung = 0.0.obs;

  //method tambah kurang bagi kali
  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "hasil jumlah",
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
    Get.snackbar(
      "hasil kurang",
      "${hasilKurang.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
    Get.snackbar(
      "hasil kali",
      "${hasilKali.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    double hasilBagi = angka2 != 0 ? angka1 / angka2 : 0.0;
    hasilHitung.value = hasilBagi;
    Get.snackbar(
      "hasil bagi",
      "${hasilBagi.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}