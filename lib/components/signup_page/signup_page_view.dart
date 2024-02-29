import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:basic_task/constant.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/signin_page/signin_page.dart';
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
          width: 5.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.sp),
            color: color5,
          ),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 12.sp,color: bluegradient,
              )),
        ),
      ),
      // backgroundColor: const Color(0xFFffffff),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Gap(
              2.h,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 7),
              child: const Text(
                "Register",
                style: TextStyle(
                    fontSize: 37, color: color6, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child:const Text(
               "create youre new account",
                style: TextStyle(fontSize: 18, color: color4),
              ),
            ),
            Gap(
              5.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.sp),
              child: TextField(decoration: customDecor(
                text: 'Full Name',
                preFixIcon: Icon(Icons.person,size: 15.sp,color: color6,),
                contendpadding: EdgeInsets.symmetric(horizontal: 2.sp, vertical: 10.sp),
              )),
            ),
            Gap(
              3.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:10.sp),
              child: TextFormField(
                validator: (value) {
                  if(value == null || !value.isEmpty){
                    return "Please Enter Valid email";
                  }
                },
                  decoration: customDecor(
                     text: 'User@gmail.com',
                    preFixIcon:  Icon(Icons.mail,size: 15.sp,color: color6,),
                    contendpadding: EdgeInsets.symmetric(horizontal: 2.sp, vertical: 10.sp),
              )),
            ),
            Gap(
              3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              child: TextFormField(
                decoration: customDecor(
                text: 'Create Password',
                preFixIcon: Icon(Icons.lock,color: color6,size: 15.sp,),
                color:color5),
                obscureText: true,
                obscuringCharacter: '●',
                style: const TextStyle(color: color6),
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
                height: 5.5.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: color6,
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
              8.h,
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
                  SocialMediaButton.facebook(
                    size: 22.sp,
                    url: "",
                  ),
                  Gap(5.w),
                    SocialMediaButton.google(
                    size: 22.sp,
                    url: "",
                  ),
                   Gap(5.w),
                    SocialMediaButton.github(
                    size: 22.sp,
                    url: "",
                  ),
                 
              ],
            ),
            Gap(
              1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 2.h, color: color4),
                ),
               
                TextButton(
                    onPressed: () {
                      // ignore: non_constant_identifier_names
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              // ignore: non_constant_identifier_names
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
