import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/welcome_page/welcome_page_view.dart';
import 'package:basic_task/components/welcome_page/welcomw_page_view_model.dart';
import 'package:basic_task/constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class WelcomePageView extends State<WelcomePage> {
  WelcomePageViewModel? viewModel;
  WelcomePageView() {
    viewModel = WelcomePageViewModel();
  }
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: pageContend(),
     );
  }
  Widget pageContend(){
    return Container(
      height: 100.h,
      width: 100.w,
      decoration:const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/jpg/cloud2.jpg"),fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topRight,
          colors: [
            darkblue.withOpacity(0.4),
            darkblue.withOpacity(0.60),
          ]
         )
        ),
        child: Column(
          children: <Widget>[
           Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(left:20,top: 180),
              width: 100.w,
              child:const Text("The best \n app for \n City Weather",style: TextStyle(color: Colors.white,fontSize:44,fontWeight: FontWeight.bold),),
            ),
            Gap(
               25.h
            ),
            GestureDetector(
              onTap: () {
                // ignore: non_constant_identifier_names
                Navigator.push(context, MaterialPageRoute(builder: (Context) => SigninPage()));
              },
              child: Container(
                height:6.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.sp),
                  color: Colors.white12,
                ),
                child: const Center(
                  child: Text("Sign in",style:TextStyle(color: Colors.white,fontSize: 16)),
                ),
              ),
            ),
            Gap(
             3.h,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: 
                const Text('Create Account',style:TextStyle(color: Colors.white,fontSize: 16)),
              
            )
          ],
        ),
      ),
    );
  }
}