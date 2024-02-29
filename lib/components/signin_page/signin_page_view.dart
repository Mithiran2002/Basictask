import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
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
                clipper: BottomWaveClipper(),
                child: Container(
                  height: 30.h,
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
                    icon:  Icon(Icons.arrow_back_ios,size:16.sp,)
                    ),
                  ),
                ),
              ),
               Gap(
                2.h,
              ),
              
            const Text("Welcome Back",style: TextStyle(fontSize: 35,color:bluegradient,fontWeight: FontWeight.w600),),
              
            
            const Text("Login to Youre Account",style: TextStyle(fontSize: 15,color:color4 ),),
          
            
              Gap(
                 5.h,
              ),
            Form(
              key: formkey,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal:15.sp,vertical: 6.sp ),
                child: TextFormField(
                  validator: (val) => val!.isEmpty || !val.contains("A-Z")
                              ? "Please Enter the Valid Name"
                              : null,
                  decoration:customDecor(
                    text: "Full Name",
                    preFixIcon: Icon(Icons.person,color: color6,size: 15.sp,)
                  ),
                  
                ),
              ),
            ),
            Gap(
              2.h,
            ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:15.sp,vertical: 6.sp ),
                child: TextFormField(
                  validator: (value){
                    if(value!. isEmpty){
                      return "Please enter valid password";
                    }if(value.length < 8){
                      return "Must be more than 2 Characters";
                    }
                  },
                 decoration:customDecor(
                  text: "password",
                 ),
                 obscureText: true,
                 obscuringCharacter: '●',style: TextStyle(color:color6),
               ),
              ),
            Row(
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 13.sp),
                child: RoundCheckBox( 
                size: 1.5.h, 
                checkedColor: color6,
                borderColor: color6,
                
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
              
                  child: const Text("Forgot password?",style: TextStyle(color: color6,fontWeight: FontWeight.bold),),

              )
              ],
            ),
            Gap(
              8.h,
            ),
            TextButton(
              onPressed: () {
                if(formkey.currentState!.validate()){
                 return print(email) 
                 
                }
              },
              child: Container(
                height: 5.5.h,
                width: 70.w,
                decoration: BoxDecoration(
                  color: color6,
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
class BottomWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var path = new Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
    size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
    size.width, size.height - 60);
    path.lineTo(size.width, 2.5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) {
   return false;
  }

}