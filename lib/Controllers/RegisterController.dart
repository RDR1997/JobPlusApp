import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final addEmail = TextEditingController();
  final addPassword = TextEditingController();
  final addFullName = TextEditingController();

  var isObscure = true.obs;
  var isLoading = false.obs;

  void toggleObscure() {
    isObscure.value = !isObscure.value;
  }

  void toggleLoading() {
    isLoading.value = !isLoading.value;
  }
}
