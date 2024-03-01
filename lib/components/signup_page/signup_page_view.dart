import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:basic_task/constant.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signup_page/signup_page_view_model.dart';

class SignUpPageView extends State<SignUpPage> {
  SignUpPageViewModel? viewModel;
  SignUpPageView() {
    viewModel = SignUpPageViewModel();
  }
  final formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin:  EdgeInsets.only(left:12.sp, top:13.sp),
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
      body:ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:15.sp,vertical: 9.sp),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Gap(
                    3.h,
                  ),
                  Text(
                    "Register",
                    style: TextStyle(
                        fontSize:30.sp, color: color6, fontWeight: FontWeight.w700),
                  ),
                   Text(
                   "create youre new account",
                    style: TextStyle(fontSize:13.sp, color: color4,fontWeight: FontWeight.w600),
                  ),
                  Gap(
                    5.h,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val){
                      if(val!.isEmpty){
                        return "*Field should not be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                            filled: true,
                            fillColor:color5,
                            hintText: "Full Name",
                            hintStyle: TextStyle(fontSize:15.sp,fontWeight: FontWeight.w600,color:bluegradient),
                           enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10.sp))
                           ),
                            prefixIcon: Icon(Icons.person,size: 15.sp,color: bluegradient,),
                           border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(18.sp)
                           ),
                           contentPadding: EdgeInsets.only(left:30.sp,top: 5.sp),
                           focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.sp),
                            borderSide: BorderSide(color:color6 ),
                           )
                          ),
                ),
                  Gap(
                    3.h,
                  ),
                  TextFormField(
                    autovalidateMode:AutovalidateMode.onUserInteraction,
                    validator: (val) {
                       if(val!.isEmpty){
                        return "*Field is should not be empty";
                       }
                       return null;
                    },
                    controller: email,
                     decoration: InputDecoration(
                            filled: true,
                            fillColor:color5,
                            hintText: "User@gmail.com",
                            hintStyle: TextStyle(fontSize:15.sp,fontWeight: FontWeight.w600,color:bluegradient),
                           enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10.sp))
                           ),
                           prefixIcon: Icon(Icons.mail,size: 15.sp,color: bluegradient,),
                           border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(18.sp)
                           ),
                           contentPadding: EdgeInsets.only(left:30.sp,top: 5.sp),
                           focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.sp),
                            borderSide:BorderSide(color:color6 ),
                           )
                          ),
                     ),
                  Gap(
                    3.h,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) {
                       if(val!.isEmpty){
                        return "*Field is should not be empty";
                       }
                       return null;
                    },
                    decoration: InputDecoration(
                            filled: true,
                            fillColor:color5,
                            hintText: "Create Password",
                            hintStyle: TextStyle(fontSize:15.sp,fontWeight: FontWeight.w600,color:bluegradient),
                           enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10.sp))
                           ),
                           prefixIcon: Icon(Icons.lock,size: 15.sp,color: bluegradient,),
                           border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(18.sp)
                           ),
                           contentPadding: EdgeInsets.only(left:30.sp,top: 5.sp),
                           focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.sp),
                            borderSide: BorderSide(color:color6 ),
                           )
                          ),
                         obscureText: true,
                         obscuringCharacter: '●',
                         style:  TextStyle(color: color6),
                  ),
                  Gap(
                    4.5.h,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      maximumSize: MaterialStatePropertyAll(Size(80.w,6.h)),
                      backgroundColor: MaterialStatePropertyAll(Color(0xFF19488b))
                    ),
                    onPressed: () {
                      if(formkey.currentState!.validate()){}
                    },
                    child: Center(
                      child: Text(
                                 "Create Account",
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                       ),
                    ),
                  ),
                  Gap(
                    8.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin:  EdgeInsets.only(left:8.sp,right: 2.sp),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.5
                              ),
                            ),
                          ),
                        ),
                      ),
                       Text(
                        "Or continue with",
                        style: TextStyle(fontSize:12.sp , color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                      Expanded(
                        child: Container(
                          // ignore: prefer_const_constructors
                          margin: EdgeInsets.only(right:8.sp,left: 2.sp),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.5,
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
                    3.h,
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
          ),
        ],
      ),
    );
  }
}
