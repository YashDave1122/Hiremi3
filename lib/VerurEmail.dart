import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hiremi/CreateUrPass.dart';
import 'package:hiremi/ForgetUrPass.dart';
import 'package:hiremi/HomePage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:email_auth/email_auth.dart';

//http://15.206.79.74:8000/otp-validation/
class VerUrEmail extends StatefulWidget {
  const VerUrEmail({super.key});

  @override
  State<VerUrEmail> createState() => _VerUrEmailState();
}

class _VerUrEmailState extends State<VerUrEmail> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final TextEditingController controller6 = TextEditingController();



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
                          return Forgoturpass();
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
                  child:Text("Verify Your Email",style: TextStyle(
                    color: Color(0xFFBD232B),
                    fontSize: 28,
                    fontFamily: 'FontMain',
                  ),)
              ),
              SizedBox(height: 7,),
              Container(
                child: Text("Please Enter Your 4 Digit Code Sent To\n"
                    "            dyash786@gmail.com",style: TextStyle(
                    fontFamily: 'FontMain'
                ),),
              ),
              SizedBox(height: 24,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 SizedBox(
                 height: 48,
                 width: 46,
                 child: TextFormField(
                   controller: controller1,
                   onSaved: (newValue) {},
                   onChanged: (value) {
                     if (value.length == 1) {
                       FocusScope.of(context).nextFocus();
                     }
                   },
                   style: Theme.of(context).textTheme.headlineSmall,
                   decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(11),
                       borderSide: const BorderSide(
                         width: 4,
                         color:Color(0xFFCACACA),
                       ),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(11),
                       borderSide: const BorderSide(
                         width: 4,
                         color: Color(0xFFCACACA),
                       ),
                     ),
                   ),
                   keyboardType: TextInputType.number,
                   textAlign: TextAlign.center,
                   inputFormatters: [
                     LengthLimitingTextInputFormatter(1),
                     FilteringTextInputFormatter.digitsOnly,
                   ],
                 ),
               ),
                 SizedBox(
                   height: 48,
                   width: 46,
                   child: TextFormField(
                     controller: controller2,
                     onSaved: (newValue) {},
                     onChanged: (value) {
                       if (value.length == 1) {
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     style: Theme.of(context).textTheme.headlineSmall,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color:Color(0xFFCACACA),
                         ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color: Color(0xFFCACACA),
                         ),
                       ),
                     ),
                     keyboardType: TextInputType.number,
                     textAlign: TextAlign.center,
                     inputFormatters: [
                       LengthLimitingTextInputFormatter(1),
                       FilteringTextInputFormatter.digitsOnly,
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 48,
                   width: 46,
                   child: TextFormField(
                     controller: controller3,
                     onSaved: (newValue) {},
                     onChanged: (value) {
                       if (value.length == 1) {
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     style: Theme.of(context).textTheme.headlineSmall,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color:Color(0xFFCACACA),
                         ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color: Color(0xFFCACACA),
                         ),
                       ),
                     ),
                     keyboardType: TextInputType.number,
                     textAlign: TextAlign.center,
                     inputFormatters: [
                       LengthLimitingTextInputFormatter(1),
                       FilteringTextInputFormatter.digitsOnly,
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 48,
                   width: 46,
                   child: TextFormField(
                     controller: controller4,
                     onSaved: (newValue) {},
                     onChanged: (value) {
                       if (value.length == 1) {
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     style: Theme.of(context).textTheme.headlineSmall,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color:Color(0xFFCACACA),
                         ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color: Color(0xFFCACACA),
                         ),
                       ),
                     ),
                     keyboardType: TextInputType.number,
                     textAlign: TextAlign.center,
                     inputFormatters: [
                       LengthLimitingTextInputFormatter(1),
                       FilteringTextInputFormatter.digitsOnly,
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 48,
                   width: 46,
                   child: TextFormField(
                     controller: controller5,
                     onSaved: (newValue) {},
                     onChanged: (value) {
                       if (value.length == 1) {
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     style: Theme.of(context).textTheme.headlineSmall,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color:Color(0xFFCACACA),
                         ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color: Color(0xFFCACACA),
                         ),
                       ),
                     ),
                     keyboardType: TextInputType.number,
                     textAlign: TextAlign.center,
                     inputFormatters: [
                       LengthLimitingTextInputFormatter(1),
                       FilteringTextInputFormatter.digitsOnly,
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 48,
                   width: 46,
                   child: TextFormField(
                     controller: controller6,
                     onSaved: (newValue) {},
                     onChanged: (value) {
                       if (value.length == 1) {
                         FocusScope.of(context).nextFocus();
                       }
                     },
                     style: Theme.of(context).textTheme.headlineSmall,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color:Color(0xFFCACACA),
                         ),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: const BorderSide(
                           width: 4,
                           color: Color(0xFFCACACA),
                         ),
                       ),
                     ),
                     keyboardType: TextInputType.number,
                     textAlign: TextAlign.center,
                     inputFormatters: [
                       LengthLimitingTextInputFormatter(1),
                       FilteringTextInputFormatter.digitsOnly,
                     ],
                   ),
                 ),
               ]
             ),


              SizedBox(height: 30,),
              Container(child: TextButton(onPressed: (){

              }, child: Text("Resend Code",style: TextStyle(
                  color: Color(0xFFBD232B)
              ),))),
              SizedBox(height: 30,),
              //
//               Container(
//                 child: ElevatedButton(
//                   onPressed: () {
// //                    String enteredOTP = _getEnteredOTP(/* pass your list of controllers here */);
//                    // verifyOTP(enteredOTP);
//                   },
//                   child: Text("Verify", style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 22,
//                     fontFamily: "FontMain",
//                   ),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFFBD232B),
//                     minimumSize: Size(200, 50),
//                   ),
//                 ),
//               ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)
                    {
                      return CreateUrPass();
                    }
                    ),);
                  },
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: "FontMain",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFBD232B),
                    minimumSize: Size(200, 50),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
