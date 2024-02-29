import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/welcome_page/welcome_page_view.dart';
import 'package:basic_task/components/welcome_page/welcomw_page_view_model.dart';
import 'package:basic_task/constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../signin_page/signin_page.dart';

class WelcomePageView extends State<WelcomePage> {
  WelcomePageViewModel? viewModel;
  WelcomePageView() {
    viewModel = WelcomePageViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pageContend(),
      ),
    );
  }

  Widget pageContend() {
    return Container(
      width: 100.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/jpg/cloud2.jpg"), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
              darkblue.withOpacity(0.4),
              darkblue.withOpacity(0.60),
            ])),
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 64.w,
                child: Text(
                  "The best app for city weather",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2.5,
                  ),
                  maxLines: 3,
                ),
              ),
              Gap(25.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => SigninPage()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Colors.blueGrey.withOpacity(0.3)),
                    minimumSize: MaterialStatePropertyAll(Size(90.w, 6.5.h)),
                    elevation: const MaterialStatePropertyAll(3),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.sp)))),
              ),
              Gap(2.h),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Container(
                    child: Text('Create an account',
                        style: TextStyle(color: Colors.white, fontSize: 11.sp)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
