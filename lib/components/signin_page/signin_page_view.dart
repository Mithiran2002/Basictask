import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signin_page/signin_page_view_model.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/welcome_page/welcomw_page_view_model.dart';
import 'package:basic_task/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_buttons/social_media_button.dart';

class SigninPageView extends State<SigninPage> {
  SigninPageViewModel? viewModel;
  SigninPageView() {
    viewModel = SigninPageViewModel();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFffffff),
      body: bodyContend(),
    );
  }
  Widget bodyContend(){
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: true),
                child: Container(
                  height: 34.h,
                  width: 100.w,
                  decoration:const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/jpg/cloud4.jpg"),fit: BoxFit.cover)
                  ),  
                  child: Container(
                    margin: EdgeInsets.only(right: 300,bottom: 150),
                    child: IconButton(
                      onPressed:() {
                        Navigator.pop(context);
                      },
                    icon: const Icon(Icons.arrow_back_ios)
                    ),
                  ),
                ),
          
              ),
               SizedBox(
                height:2.h,
              ),
              
             Text("Welcome Back",style: TextStyle(fontSize: 35,color:bluegradient,),),
              
            
             Text("Login to Youre Account",style: TextStyle(fontSize: 15,color:color4 ),),
          
            
              SizedBox(
                height: 5.h,
              ),
            Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
              color: Color5,
              borderRadius: BorderRadius.circular(18)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 60,top: 12),
                  hintText: "Full Name",
                  hintStyle: TextStyle(color:Color6 ,fontSize: 17),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person,color: Color6,)
                ),
              ),
            ),
            SizedBox(
              height:3.h,
            ),
             Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
              color: Color5,
              borderRadius: BorderRadius.circular(18)
              ),
              child:const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 60,top: 12),
                  hintText: "Password",
                  hintStyle: TextStyle(color:Color6 ,fontSize: 17),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock,color: Color6,)
                ),
                obscureText: true,
                obscuringCharacter: '●',style: TextStyle(color: Color6),
                
              ),
            ),
            SizedBox(
              height:3.h,
            ),
            Row(
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 18),
                child: RoundCheckBox( 
                size: 15, 
                checkedColor: Color6,
                borderColor: Color6,
                
                onTap: (selected) {},),
              ), 
              SizedBox(
                width:4.w,
              ),
              Container(
                child: Text("Remember Me",style:TextStyle(color: color4),),
              ),
              SizedBox(
                width: 110,
              ),
              TextButton(
                onPressed:() {
                  
                },
                child: Container(
                  child: Text("Forgot password?",style: TextStyle(color: Color6,fontWeight: FontWeight.bold),),
                ),
              )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color6,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Signin",style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
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
            Container(
              padding:  EdgeInsets.symmetric(horizontal: 8),
              child:   Text(
                "Or continue with",
                style: TextStyle(fontSize: 17,color: Colors.black),
              ),
            ),
            Expanded(
              child: Container(
                margin:EdgeInsets.only(right: 10) ,
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
                SizedBox(
          height: 10,
                ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/jpg/facebook.png"),
              ),
            ),
            SizedBox(
              width: 5.h,
            ),
             Container(
               child: CircleAvatar(
                backgroundImage: AssetImage("assets/jpg/google.png"),
                         ),
             ),
              SizedBox(
              width: 5.h,
            ),
             Container(
               child: CircleAvatar(
                backgroundImage: AssetImage("assets/jpg/apple3.jpg"),
                         ),
             )
          ],
                ),
                SizedBox(
          height:5,
                ),
                Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?",style: TextStyle(fontSize: 15,color:color4 ),),
            SizedBox(width: 10,),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (Context) => SignUpPage()));
              },
              child: Text("Sign up",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: bluegradient ),))
          ],
                )
              ],
          ),
        ),
      ],
    );
  }
}