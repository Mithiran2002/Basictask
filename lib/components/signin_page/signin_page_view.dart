import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:basic_task/constant.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:basic_task/utilities/extension.dart';
import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/signin_page/signin_page_view_model.dart';

class SigninPageView extends State<SigninPage> {
  SigninPageViewModel? viewModel;
  SigninPageView() {
    viewModel = SigninPageViewModel();
  }
  final formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  double padValue = 1;
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.black,
    ));
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFffffff),
        body: bodyContend(),
      ),
    );
  }

  Widget bodyContend() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Form(
          key: formkey,
          child: Column(
            children: [
              ClipPath(
                clipper: BottomWaveClipper(),
                child: Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/jpg/cloud4.jpg"),
                          fit: BoxFit.cover)),
                  child: Container(
                    margin: EdgeInsets.only(right: 75.w, bottom: 80.sp),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 16.sp,
                        )),
                  ),
                ),
              ),
              Gap(
                1.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.sp, vertical: 5.sp),
                child: Column(
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontSize: 28.sp,
                          color: bluegradient,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Login to youre account",
                      style: TextStyle(fontSize: 13.sp, color: color4),
                    ),
                    Gap(
                      5.h,
                    ),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val) {
                          if (val!.isValidName) {
                            return "Enter Valid name";
                          } else if (val.isEmpty) {
                            return "*Field Should not be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: color5,
                            hintText: "Full Name",
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            hintStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: bluegradient),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.sp))),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 15.sp,
                              color: bluegradient,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(13.sp),
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 30.sp, top: 5.sp),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.sp),
                              borderSide: BorderSide(color: color6),
                            ))),
                    Gap(
                      2.5.h,
                    ),
                    TextFormField(
                      validator: (val){
                        if (val!.isValidPassword) {
                          return "Enter the valid password";
                        } else if (val.isNotEmpty) {
                          return "*Password is not correct";
                        } else if (val.isEmpty) {
                          return "*Field Should not be empty";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: password,
                      decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.sp))),
                          filled: true,
                          fillColor: color5,
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: bluegradient),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.sp))),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 15.sp,
                            color: bluegradient,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(13.sp),
                          ),
                          contentPadding:
                              EdgeInsets.only(left: 30.sp, top: 5.sp),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.sp),
                            borderSide: BorderSide(color: color6),
                          )),
                      obscureText: true,
                      obscuringCharacter: '●',
                      style: const TextStyle(color: color6),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 13.sp),
                          child: RoundCheckBox(
                            size: 1.5.h,
                            checkedColor: color6,
                            borderColor: color6,
                            onTap: (selected) {},
                          ),
                        ),
                        Gap(
                          3.w,
                        ),
                        const Text(
                          "Remember Me",
                          style: TextStyle(color: color4),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                                color: color6, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Gap(
                      7.h,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          maximumSize:
                              MaterialStatePropertyAll(Size(80.w, 6.h)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF19488b))),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {}
                      },
                      child: Center(
                        child: Text(
                          "Login",
                          style:
                              TextStyle(color: Colors.white, fontSize: 14.sp),
                        ),
                      ),
                    ),
                    Gap(
                      4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 2.h, color: color4),
                        ),
                        Gap(
                          1.w,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (Context) => SignUpPage()));
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.bold,
                                  color: bluegradient),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
