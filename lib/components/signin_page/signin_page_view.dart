import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:basic_task/constant.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:basic_task/components/signin_page/signin_page_view_model.dart';
import 'package:basic_task/components/welcome_page/welcomw_page_view_model.dart';


class SigninPageView extends State<SigninPage> {
  SigninPageViewModel? viewModel;
  SigninPageView() {
    viewModel = SigninPageViewModel();
  }
  final formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:const Color(0xFFffffff),
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
                    margin:const EdgeInsets.only(right: 300,bottom: 150),
                    child: IconButton(
                      onPressed:() {
                        Navigator.pop(context);
                      },
                    icon: const Icon(Icons.arrow_back_ios)
                    ),
                  ),
                ),
          
              ),
               Gap(
                2.h,
              ),
              
            const Text("Welcome Back",style: TextStyle(fontSize: 35,color:bluegradient,),),
              
            
            const Text("Login to Youre Account",style: TextStyle(fontSize: 15,color:color4 ),),
          
            
              Gap(
                 5.h,
              ),
            Form(
              key: formkey,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal:15.sp,vertical: 6.sp ),
                child: TextFormField(
                  validator: (val) => val!.isEmpty || !val.contains("@")
              ? "enter a valid email"
              : null,
                  decoration:customDecor(
                    text: "User@gmail.com",
                    preFixIcon: Icon(Icons.mail,color: Color6,)
                  ),
                  
                ),
              ),
            ),
            Gap(
              1.h,
            ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:15.sp,vertical: 6.sp ),
                child: TextFormField(
                 decoration:customDecor(
                  text: "password",
                 ),
                 obscureText: true,
                 obscuringCharacter: '●',style: TextStyle(color: Color6),
               ),
              ),
            Gap(
              3.h,
            ),
            Row(
              children: <Widget>[
              Container(
                margin:const EdgeInsets.only(left: 18),
                child: RoundCheckBox( 
                size: 1.5.h, 
                checkedColor: Color6,
                borderColor: Color6,
                
                onTap: (selected) {},),
              ), 
              Gap(
                3.w,
              ),
              
              const Text("Remember Me",style:TextStyle(color: color4),),
              
              Gap(
                 30.w,
              ),
              TextButton(
                onPressed:() {
                  
                },
              
                  child: const Text("Forgot password?",style: TextStyle(color: Color6,fontWeight: FontWeight.bold),),

              )
              ],
            ),
            Gap(
              2.h,
            ),
            TextButton(
              onPressed: () {
                if(formkey.currentState!.validate()){
                 return print(email);
                }
              },
              child: Container(
                height: 6.h,
                width: 70.w,
                decoration: BoxDecoration(
                  color: Color6,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:const Center(
                  child: Text("Signin",style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
            ),
            Gap(
              2.h,
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
              style: TextStyle(fontSize: 17,color: Colors.black),
            ),
            Expanded(
              child: Container(
                margin:const EdgeInsets.only(right: 10) ,
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
                1.h,
                ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
              const CircleAvatar(
                backgroundImage: AssetImage("assets/jpg/facebook.png"),
              ),
            
            Gap(
               3.1.w,
            ),
             
              const  CircleAvatar(
                backgroundImage: AssetImage("assets/jpg/google.png"),
                         ),
             
              Gap(
               3.w,
            ),
             
               const CircleAvatar(
                backgroundImage: AssetImage("assets/jpg/apple3.jpg"),
                         ),
             
          ],
        ),
          Gap(
             0.1.h,
              ),
                Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?",style: TextStyle(fontSize:2.h,color:color4 ),),
            SizedBox(width: 2.w,),
            TextButton(
              onPressed: () {
                // ignore: non_constant_identifier_names
                Navigator.push(context, MaterialPageRoute(builder: (Context) => SignUpPage()));
              },
              child: Text("Sign up",style: TextStyle(fontSize:2.h,fontWeight: FontWeight.bold,color: bluegradient ),))
          ],
                )
              ],
          ),
        ),
      ],
    );
  }
}