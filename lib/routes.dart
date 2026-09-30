import 'package:flutter_application_1/pages/confirm_registration.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {}

class Routes {
  //
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";

  //tampung ke dalam array yang akan kita pasang ke main dart
  static final mypages = [
    GetPage(name: registration, page: ()=>RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=>ConfirmRegistrationPage())
  ];
}