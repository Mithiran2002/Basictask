import 'package:basic_task/components/signin_page/signin_page.dart';
import 'package:basic_task/components/signup_page/signup_page.dart';
import 'package:basic_task/components/signup_page/signup_page_view_model.dart';
import 'package:basic_task/components/welcome_page/welcomw_page_view_model.dart';
import 'package:basic_task/constant.dart';
import 'package:flutter/material.dart';

class SignUpPageView extends State<SignUpPage> {
  SignUpPageViewModel? viewModel;
  SignUpPageView() {
    viewModel = SignUpPageViewModel();
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      leading: Container(
        margin: EdgeInsets.only(left: 10,top: 10),
        height:5,
        width: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color5,
        ),
        child: IconButton(
        onPressed:() {
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back_ios,size: 18,)),
      ),
     ),
      backgroundColor: Color(0xFFffffff),
      body: Column(
        children: <Widget>[
         
          SizedBox(
            height: 60,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20),
            child: Text("Register",style: TextStyle(fontSize: 30,color: Color6),),
          ),
            Container(
            alignment: Alignment.center,
           
            child: Text("Create your'e new account",style: TextStyle(fontSize: 18,color: color4),),
          ),
          SizedBox(height: 40,),
           Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
            color: Color5,
            borderRadius: BorderRadius.circular(18)
            ),
            child: TextField(
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
            height: 20,
          ),
           Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
            color: Color5,
            borderRadius: BorderRadius.circular(18)
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 60,top: 12),
                hintText: "User@gmail.com",
                hintStyle: TextStyle(color:Color6 ,fontSize: 17),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.mail,color: Color6,)
              ),
             
            ),
          ),
           SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
            color: Color5,
            borderRadius: BorderRadius.circular(18)
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 60,top: 12),
                hintText: " Create password",
                hintStyle: TextStyle(color:Color6 ,fontSize: 17),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.lock,color: Color6,)
              ),
               obscureText: true,
              obscuringCharacter: '●',style: TextStyle(color: Color6),
              
            ),
          ),
          SizedBox(
            height:40,
          ),
           TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomePage()));
            },
             child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color6,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Create Account",style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
           ),
            SizedBox(
              height: 40,
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
              decoration:  BoxDecoration(
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
        height: 28,
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
            width: 15,
          ),
           Container(
             child: CircleAvatar(
              backgroundImage: AssetImage("assets/jpg/google.png"),
                       ),
           ),
            SizedBox(
            width: 15,
          ),
           Container(
             child: CircleAvatar(
              backgroundImage: AssetImage("assets/jpg/apple3.jpg"),
             ),
           )
        ],
      ),
      SizedBox(
        height: 28,
      ),
         Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Already have an account?",style: TextStyle(fontSize: 15,color:color4 ),),
          SizedBox(width: 10,),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (Context) => SigninPage()));
            },
            child: Text("Sign in",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: bluegradient ),))
        ],
      )
        ],
      ),
   );
  }
  
}