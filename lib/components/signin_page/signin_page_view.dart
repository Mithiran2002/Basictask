import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:basic_task/constant.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
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
  bool isvalid = false;
  double padValue = 1;
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor:Colors.black,
      statusBarColor:Colors.black,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFffffff),
      body: bodyContend(),
    );
  }

  Widget bodyContend() {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                      margin:  EdgeInsets.only(right:75.w, bottom: 80.sp),
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
                  2.h,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontSize:28.sp,
                      color: bluegradient,
                      fontWeight: FontWeight.w600),
                ),
                 Text(
                  "Login to Youre Account",
                  style: TextStyle(fontSize:13.sp, color: color4),
                ),
                Gap(
                  5.h,
                ),
                Form(
                  key: formkey,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.sp, vertical: 6.sp),
                    child: TextFormField(
                      validator: (val) => val!.isEmpty || !val.contains("A-Z")
                          ? "Please Enter the Valid Name"
                          : null,
                      decoration: customDecor(
                          text: "Full Name",
                          preFixIcon: Icon(
                            Icons.person,
                            color: color6,
                            size: 15.sp,
                          )),
                    ),
                  ),
                ),
                Gap(
                  1.5.h,
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 15.sp, vertical: 6.sp),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter valid password";
                      }
                      if (value.length < 8) {
                        return "Must be more than 2 Characters";
                      }
                    },
                    decoration: customDecor(
                      text: "password",
                    ),
                    obscureText: true,
                    obscuringCharacter: '●',
                    style:const TextStyle(color: color6),
                  ),
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
                    Gap(
                      30.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child:const   Text(
                        "Forgot password?",
                        style:
                            TextStyle(color: color6, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Gap(
                  8.h,
                ),
                ElevatedButton(
                  style: ButtonStyle(maximumSize:MaterialStatePropertyAll(Size(80.w,6.h)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF19488b))
                   ),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      return print(email);
                    }
                  },
                  child: Center(
                    child: Text(
                                 "Login",
                                  style: TextStyle(color: Colors.white, fontSize:14.sp),
                     ),
                  ),
                ),
                Gap(
                  2.h,
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
                          // ignore: non_constant_identifier_names
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
