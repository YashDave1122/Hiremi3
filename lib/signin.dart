import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiremi/Accounts.dart';
import 'package:hiremi/ForgetUrPass.dart';
import 'package:hiremi/HomePage.dart';
import 'package:hiremi/Register.dart';
import 'package:hiremi/widgets/neo_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var _username=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 75,),
             Image.asset('images/Hiremi_Icon.png'),
              Container(
                child: Text("Let’s get started.",style: TextStyle(
                   fontSize:30,
                   fontFamily: 'FontMain',
                    fontWeight: FontWeight.w700,
                ),),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _username,
                        decoration:InputDecoration(
                          labelText: 'User Name',
                          labelStyle: TextStyle(
                              color: Color(0xFFCACACA),
                              fontSize: 22
                          ),
                          prefixIcon: Icon(color: Color(0xFFCACACA),
                              Icons.person),

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller:password,
                        obscureText: true,
                        decoration:InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Color(0xFFCACACA),
                                fontSize: 22
                            ),
                            prefixIcon: Icon(color: Color(0xFFCACACA),
                                Icons.lock),
                            suffixIcon: Icon(
                                color: Color(0xFFCACACA),
                                Icons.remove_red_eye)

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)
                    {
                      return Forgoturpass();
                    }
                    ),);
                  }

                      , child: Text("Forgot Your Password ?",style: TextStyle(
                        color: Color(0xFFBD232B),
                        fontSize: 15,

                      ),))),
              SizedBox(
                height: 30,
              ),
              Container(

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)
                    {
                      return HomePage();
                    }
                    ),);
              }

                , child: Text("Sign in",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xFFBD232B),
                  minimumSize: Size(200, 50),
                ),

              )
              ),
              SizedBox(height: 30,),
              Container(
                child:Row(
                  children: [
                    SizedBox(width: 80,),
                    Text("Don't have an account?"),
                    SizedBox(height: 10,),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)
                      {
                        return Register();
                      }
                      ),);
                    }, child: Text("Register Now",style:
                    TextStyle(color: Color(0xFF5C5C45),
                        fontFamily: 'FontMain'
                    )
                      ,)),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
