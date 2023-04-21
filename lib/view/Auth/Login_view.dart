import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_web/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_web/utilis/constants/route_name.dart';

import 'package:get/get.dart';

import '../../controllers/authcontroller.dart';
import '../../controllers/checkboxcontroller.dart';

class login extends StatelessWidget {
  final check = Get.find<checkboxController>();
  final authcontrollerr = Get.find<authController>();

  login({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromARGB(255, 29, 52, 71)
                                    .withOpacity(0.5),
                                BlendMode.darken),
                            image: AssetImage(Images.login))),
                  ),
                ),
                Positioned(
                  left: 100,
                  right: 400,
                  top: 280,
                  child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'National Federation of italian Perapharmacies',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text('Admin Panel',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 222, 222, 222)))
                        ],
                      )),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                      color: Colors.white,
                      width: width <= 650 ? width : 420,
                      height: height * 1.0,
                      padding: EdgeInsets.only(
                          top: height * 0.3, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Log in',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            'Enter your Email and Password to log in',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          SizedBox(height: height * 0.01),
                          Container(
                            height: 35,
                            child: customtextformfield(
                              controller: authcontrollerr.emailContoller,
                              hinttext: 'Email',
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Container(
                            height: 35,
                            child: customtextformfield(
                              controller: authcontrollerr.passwordController,
                              hinttext: 'Password',
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Obx(() => Checkbox(
                                      value: check.checkvalue.value,
                                      onChanged: (value) {
                                        check.checkvalue.value = value!;
                                      })),
                                  Text(
                                    'remember me',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: FittedBox(
                                    child: Text(
                                      'forget Password ?',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff62A8EA)),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          SizedBox(
                            height: 45,
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff62A8EA)),
                                onPressed: () {
                                  Get.toNamed(RouteName.signUp);
                                },
                                child: Text(
                                  'log in',
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                          Spacer(),
                          Center(
                            child: Container(
                                height: height * 0.04,
                                width: 130,
                                child: Text(
                                  'ITGO Admin Panel v5.0© 2022. All rights reserved',
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          )
                        ],
                      )),
                )
              ],
            )));
  }
}

class customtextformfield extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Color? filledColor;
  const customtextformfield({
    Key? key,
    required this.hinttext,
    required this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.prefix,
    this.filledColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: filledColor ?? null,
            prefixIcon: prefixIcon ?? null,
            prefix: prefix ?? null,
            suffixIcon: suffixIcon ?? null,
            contentPadding: EdgeInsets.only(top: 15, left: 10),
            hintText: hinttext,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            )),
      ),
    );
  }
}
