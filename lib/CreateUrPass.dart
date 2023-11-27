import 'package:flutter/material.dart';
import 'package:hiremi/HomePage.dart';
import 'package:hiremi/VerurEmail.dart';

class CreateUrPass extends StatefulWidget {
  const CreateUrPass({super.key});

  @override
  State<CreateUrPass> createState() => _CreateUrPassState();
}

class _CreateUrPassState extends State<CreateUrPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 13,),
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)
                        {
                          return VerUrEmail();
                        }
                        ),);
                      },
                      child: Image.asset('images/Back_Button.png')),
                ],
              ),
              Container(
                child: Image.asset('images/ForgetUrPass.png'),
              ),
              Container(
                  child:Text("Create New Password",style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'FontMain',
                  ),)
              ),
              SizedBox(height: 7,),
              Container(
                child: Text("Your New Password Must be Different",)
              ),
              Container(
                  child: Text("from previously used password",)
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Column(
                    children: [
                      TextField(

                        obscureText: true,
                        decoration:InputDecoration(
                            labelText: 'New Password',
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
                      SizedBox(
                        height: 10,
                      ),
                      TextField(

                        obscureText: true,
                        decoration:InputDecoration(
                            labelText: 'Confirm Password',
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
            ],
          ),
        ),
      ),
    );
  }
}
