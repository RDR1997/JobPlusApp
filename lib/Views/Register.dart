import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_plus/Controllers/RegisterController.dart';
import 'dart:math' as math;

import 'package:job_plus/constants.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              color: colortheam1,
              iconSize: 40,
              icon: Icon(
                Icons.chevron_left_rounded,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 30),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Register Now',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: fontColor1,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto'),
                      ),
                      Text(
                        'Search your dream job fast and ease !',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: fontColor2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                    controller: registerController.addEmail,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      labelStyle: TextStyle(color: fontColor2),
                      hintText: 'Email',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 158, 158, 158),
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.email_outlined),
                      prefixIconColor: fontColor2,
                    )),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    controller: registerController.addFullName,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Full Name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Full Name',
                      labelStyle: TextStyle(color: fontColor2),
                      hintText: 'Full Name',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 158, 158, 158),
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.person_outline_outlined),
                      prefixIconColor: fontColor2,
                    )),

                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    controller: registerController.addPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Password";
                      }
                      return null;
                    },
                    obscureText: registerController.isObscure.value,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      labelStyle: TextStyle(color: fontColor2),
                      hintText: 'Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 158, 158, 158),
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.password_rounded),
                      prefixIconColor: fontColor2,
                      suffixIcon: IconButton(
                        icon: Icon(registerController.isObscure.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          registerController.toggleObscure();
                        },
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                    controller: registerController.addPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Confirm the Password";
                      } else if (registerController.addPassword.text != value) {
                        return "Incorrect password";
                      }
                      return null;
                    },
                    obscureText: registerController.isObscure.value,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: fontColor2),
                      hintText: 'Confirm Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 158, 158, 158),
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.password_rounded),
                      prefixIconColor: fontColor2,
                      suffixIcon: IconButton(
                        icon: Icon(registerController.isObscure.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          registerController.toggleObscure();
                        },
                      ),
                    )),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colortheam1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the value as needed
                        ),
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: colortheam3),
                      )),
                ),

                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        child: Divider(
                      thickness: 1,
                    )),
                    // const Expanded(child: SizedBox(width: 5,)),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Or countinue with',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: fontColor2,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    // const Expanded(
                    //     child: SizedBox(
                    //   width: 5,
                    // )),

                    const Expanded(
                        child: Divider(
                      thickness: 1,
                    )),
                  ],
                ),
                // Spacer(flex: 1,),
              ]),
            ),
          ),
        ));
  }
}
