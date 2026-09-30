import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String jenisKelamin;
  late String alamat;
  late String noWa;
  late String email;
  late String hobi;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments; // Menangkap data dari halaman sebelumnya[cite: 7]
    nama = arguments['nama'] ?? '';
    jenisKelamin = arguments['jenis_kelamin'] ?? '';
    alamat = arguments['alamat'] ?? '';
    noWa = arguments['no_wa'] ?? '';
    email = arguments['email'] ?? '';
    hobi = arguments['hobi'] ?? '';
  }
}