import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_plus/Controllers/LoginController.dart';
import 'dart:math' as math;

import 'package:job_plus/constants.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
              child: Column(children: [
                SizedBox(
                    height: 150,
                    child: Transform.rotate(
                      angle: 1 * math.pi / 180, // 5 degrees to radians
                      child: Image.asset(
                    '/images/logoDark.png',
                    fit: BoxFit.fitWidth,
                  ),
                )),
            // const SizedBox(
            //   height: 5,
            // ),
            Text(
              'Welcome JobPlus',
              style: TextStyle(
                  color: fontColor1,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Roboto'),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
                controller: loginController.email,
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
                controller: loginController.password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Password";
                  }
                  return null;
                },
                obscureText: loginController.isObscure.value,
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
                    icon: Icon(loginController.isObscure.value
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      loginController.toggleObscure();
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
                    'Login',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: colortheam3),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: fontColor1,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
            ),
            const SizedBox(
              height: 100,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Haven't an account?",
                  style: TextStyle(
                      color: fontColor2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    " Register",
                    style: TextStyle(
                        color: colortheam1,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}
