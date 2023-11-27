import 'package:flutter/material.dart';
import 'package:hiremi/Register.dart';
import 'package:hiremi/VerurEmail.dart';
import 'package:hiremi/signin.dart';
import 'package:http/http.dart' as http;
import 'package:email_auth/email_auth.dart';


class Forgoturpass extends StatefulWidget {
  const Forgoturpass({super.key});

  @override
  State<Forgoturpass> createState() => _ForgoturpassState();
}

class _ForgoturpassState extends State<Forgoturpass> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            children: [
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start
                    ,
                    children: [
                      SizedBox(height: 20,),
                      Text("")
                    ],
                  )
              ),
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)
                        {
                          return SignIn();
                        }
                        ),);
                      },
                      child: Image.asset('images/Back_Button.png')),
                ],
              ),
              Container(
                  child: Column(
                      children:[
                        Image.asset('images/ForgetUrPass.png')
                      ]
              )
              ),
              Container(
                  child: Text("Forget Password",style: TextStyle(
                    color:Color(0xFFBD232B),
                    fontSize: 28,
                    fontFamily: 'FontMain',
                  ),)
              ),
              SizedBox(height: 8,),
              Container(
                child: Text("Please Enter Your Email Address To \n  "
                    "     Received a Varification code",style: TextStyle(
                    fontFamily: "FontMain"
                ),),
              ),
              Container(
                  child:Padding(
                    padding: const EdgeInsets.all(29.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: "Email Address",
                          labelStyle: TextStyle(color: Color(0xFFCACACA),
                          fontSize:22,
                          ),
                          prefixIcon: Icon(Icons.person,
                            color: Color(0xFFCACACA),
                          )
                      ),

                    ),
                  )
              ),
              SizedBox(height: 28,),
              Container(child: TextButton(onPressed: (){

              }
                  , child: Text("Try Another Way",style: TextStyle(

                      color:Color(0xFFBD232B),
                      fontSize: 16
                  ),))
              ),
              SizedBox(height: 38,),
              Container(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)
                  {
                    return VerUrEmail();
                  }
                  ),);

                }, child: Text("Send",style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xFFBD232B),
                      minimumSize: Size(200, 50),




                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
