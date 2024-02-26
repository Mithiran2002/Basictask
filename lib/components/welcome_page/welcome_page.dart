import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/welcome_page/welcome_page_view.dart';
import 'package:basic_task/components/welcome_page/welcomw_page_view_model.dart';
import 'package:basic_task/constant.dart';
import 'package:flutter/material.dart';
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
              padding: EdgeInsets.only(left:20,top: 180),
              width: 100.w,
              child: Text("The best \n app for \n City Weather",style: TextStyle(color: Colors.white,fontSize:44,fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 230,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (Context) => SigninPage()));
              },
              child: Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white12,
                ),
                child: Center(
                  child: Text("Sign in",style:TextStyle(color: Colors.white,fontSize: 16)),
                ),
              ),
            ),
            SizedBox(
             height: 25,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Container(
                child: Text('Create Account',style:TextStyle(color: Colors.white,fontSize: 16)),
              ),
            )
          ],
        ),
      ),
    );
  }
}