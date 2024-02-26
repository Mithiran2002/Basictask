import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:basic_task/constant.dart';
import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/signup_page/signup_page_view_model.dart';
import 'package:basic_task/components/welcome_page/welcomw_page_view_model.dart';

class SignUpPageView extends State<SignUpPage> {
  SignUpPageViewModel? viewModel;
  SignUpPageView() {
    viewModel = SignUpPageViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
          height: 5.h,
          width: 10.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.sp),
            color: Color5,
          ),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 12.sp,
              )),
        ),
      ),
      // backgroundColor: const Color(0xFFffffff),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Gap(
              5.h,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Register",
                style: TextStyle(
                    fontSize: 32, color: Color6, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Create your'e new account",
                style: TextStyle(fontSize: 18, color: color4),
              ),
            ),
            Gap(
              10.h,
            ),
            TextField(decoration: customDecor(
              text: 'Full Name',
              preFixIcon: Icon(Icons.person,size:3.h,color: Color6,)
            )),
            Gap(
              3.h,
            ),
            TextField(decoration: customDecor(
                   text: 'User@gmail.com',
                  preFixIcon:  Icon(Icons.mail,size:3.h,color: Color6,)
            )),
            Gap(
              3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              child: TextFormField(
                decoration: customDecor(
                text: 'Create Password',
                preFixIcon: Icon(Icons.lock,color: Color6,size: 3.h,),
                color: Color6),
                obscureText: true,
                obscuringCharacter: '●',
                style: TextStyle(color: Color6),
              ),
            ),
            Gap(
              4.h,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomePage()));
              },
              child: Container(
                height: 6.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Color6,
                  borderRadius: BorderRadius.circular(18.sp),
                ),
                child: const Center(
                    child: Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
            ),
            Gap(
              5.h,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Or continue with",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Expanded(
                  child: Container(
                    // ignore: prefer_const_constructors
                    margin: EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(
              5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/jpg/facebook.png"),
                ),
                Gap(
                  3.h,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/jpg/google.png"),
                ),
                Gap(3.h),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/jpg/apple3.jpg"),
                )
              ],
            ),
            Gap(
              2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 2.h, color: color4),
                ),
                SizedBox(
                  width: 1.w,
                ),
                TextButton(
                    onPressed: () {
                      // ignore: non_constant_identifier_names
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) => SigninPage()));
                    },
                    child: Text(
                      "Sign in",
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
    );
  }
}
