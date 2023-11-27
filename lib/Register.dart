import 'dart:convert';
import 'package:uuid/uuid.dart';

import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:hiremi/signin.dart';
import 'package:hiremi/widgets/neo_text.dart';
import 'package:http/http.dart' as http;
import 'package:csc_picker/csc_picker.dart';

class Register extends StatefulWidget {

  @override
  State<Register> createState() => _RegisterState();
}
enum Gender{
  Male,Female,Other;
}

class _RegisterState extends State<Register> {
  String? countryPicker;
  String? statePicker;
  String? cityPicker;
  String genderSelector = "";
  var uuid = Uuid();

  late String valueChoose;
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final fatherFirstController = TextEditingController();
  final fatherLastController = TextEditingController();
  final genderController = TextEditingController();
  final emailController = TextEditingController();

  final dateOfBirthController=TextEditingController();
  final birthStateController = TextEditingController();
  final birthcityController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final whatsAppNumberController = TextEditingController();
  final collageStateController = TextEditingController();
  final collageNameController = TextEditingController();
  final branchNameController = TextEditingController();
  final passingYearController = TextEditingController();
  final passwordController = TextEditingController();
  final conformPasswordController = TextEditingController();


  List listItem=[
    "Male","Female","Other"
  ];



Gender _gender=Gender.Male;
  @override
  Widget build(BuildContext context) {
    void selectDatePicker() async {
      DateTime? datePicker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1980),
        lastDate: DateTime(2025),
      );
      if (datePicker != null) {
        if (datePicker.isAfter(DateTime.now())) {
        } else {
          setState(() {
            dateOfBirthController.text =
            datePicker.toString().split(" ")[0];
          });
        }
      }
    }
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
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
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [

                  SizedBox(width: 10,),
                 CustomTextWidget(text: "Register",
                 color:  Color(0xFFBD232B),
                 fontSize: 30,
                 ),

                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  CustomTextWidget(text: "Create your new account,\nwe are glad that you joined us.",
                    fontSize: 15,

                  ),
                ],
              ),
            ),
            SizedBox(height: 45,),

            Container(

              color: Colors.white,
              child:  Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Your Name",style: TextStyle(
                    color:  Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontFamily: 'FontMain',
                  ),),
                ],),
            ),
            Container(
              color: Colors.white,

              child:  Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: TextFormField(
                        controller: firstnameController,
                        validator: (value){
                          if (!value!.isEmpty) {
                           print('Please enter name');

                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'First Name',
                        labelStyle: TextStyle( color:Color(0xFFCACACA))),
                      ),
                    ),


                  ),

                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: TextField(
                        controller:lastnameController ,
                        decoration: InputDecoration(labelText: 'last Name',
                        labelStyle: TextStyle( color:Color(0xFFCACACA))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(

              color: Colors.white,
              child:  Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Father's Name",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontFamily: 'FontMain',
                  ),),
                ],),
            ),
            Container(
              color: Colors.white,

              child: Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: TextField(
                        controller:fatherFirstController ,
                        decoration: InputDecoration(labelText: 'First Name',
                        labelStyle: TextStyle( color:Color(0xFFCACACA))),
                      ),
                    ),
                  ),

                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: TextField(
                        controller: fatherLastController,
                        decoration: InputDecoration(labelText: 'last Name',
                        labelStyle: TextStyle( color:Color(0xFFCACACA))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(

              color: Colors.white,
              child:  Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Gender",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontFamily: 'FontMain',
                  ),),
                ],),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Male",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: 'Poppins.bold',
                 color: Color(0xFFCACACA),
                ),),
              Radio(

                  value: Gender.Male, groupValue: _gender, onChanged: (gender){
                setState(() {
                  _gender = gender!;
                });
              }),
                Text("Female",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: 'Poppins.bold',
                  color: Color(0xFFCACACA),
                ),),
                Radio(

                    value: Gender.Female, groupValue: _gender, onChanged: (gender){
                  setState(() {
                    _gender = gender!;
                  });
                }),

              ],
            ),


           SizedBox(height: 25,),
            Container(

              color: Colors.white,
              child:  Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Enter your Email",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontFamily: 'FontMain',
                  ),),
                ],),
            ),
            Container(
              color: Colors.white,

              child:  Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: TextField(
                        controller:emailController ,
                        decoration: InputDecoration(labelText: 'Email',
                        labelStyle: TextStyle( color:Color(0xFFCACACA) )),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            Container(

              color: Colors.white,
              child:  Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Date of birth",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontFamily: 'FontMain',
                  ),),
                ],),
            ),
           SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextFormField(
                cursorColor: Color(0xFF9B9B9B),
                controller: dateOfBirthController,
                keyboardType: TextInputType.none,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter date of birth';
                  }
                  return null; // Return null if the input is valid
                },
                onTap: () {
                  selectDatePicker();
                },
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFFCACACA),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF9B9B9B),
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      selectDatePicker();
                    },
                    icon: const Icon(
                      Icons.expand_more,
                    ),
                  ),
                  suffixIconColor: Color(0xFF9B9B9B),
                  prefixIcon: IconButton(
                    onPressed: () {
                      selectDatePicker();
                    },
                    icon: const Icon(
                      Icons.calendar_month_outlined,
                    ),
                  ),
                  prefixIconColor: Color(0xFF9B9B9B),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(

              color: Colors.white,
              child:  Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Birth Place",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontFamily: 'FontMain',
                  ),),
                ],),
            ),
              SizedBox(height: 15,),
            CSCPicker(
              flagState: CountryFlag.DISABLE,
              onCountryChanged: (country) {
                countryPicker = country;
              },
              onStateChanged: (state) {
                statePicker = state;
              },
              onCityChanged: (city) {
                cityPicker = city;
              },
            ),
            SizedBox(height: 15,),
           Container(
             child: Column(
               children: [ Container( color: Colors.white,
                 child:  Row(
                   children: [
                     SizedBox(width: 30,),
                     Text("Contact Number",style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.w700,
                       fontSize: 26,
                       fontFamily: 'FontMain',
                     ),),
                   ],),),
                 Row(
                   children: [
                     Flexible(
                       child: Padding(
                         padding: EdgeInsets.all(20.0),
                         child: TextField(
                           controller:phoneNumberController ,
                             keyboardType: TextInputType.number,
                           decoration: InputDecoration(labelText: 'Phone Number',
                               labelStyle: TextStyle( color:Color(0xFFCACACA))),
                         ),
                       ),
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Flexible(
                       child: Padding(
                         padding: EdgeInsets.all(20.0),
                         child: TextField(
                           controller: whatsAppNumberController,
                           keyboardType: TextInputType.number,
                           decoration: InputDecoration(labelText: 'Whats app Number',
                               labelStyle: TextStyle( color:Color(0xFFCACACA))),
                         ),
                       ),
                     ),
                   ],
                 ),],
             ),
           ),
           SizedBox(height: 15,),
           Container( color: Colors.white,
             child:  Row(
               children: [
                 SizedBox(width: 20,),
                 Text("College",style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.w700,
                   fontSize: 26,
                   fontFamily: 'FontMain',
                 ),),
               ],),),

            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller:collageStateController ,
                      decoration: InputDecoration(labelText: 'College State',
                          labelStyle: TextStyle( color:Color(0xFFCACACA))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: collageNameController,
                      decoration: InputDecoration(labelText: 'College Name',
                          labelStyle: TextStyle( color:Color(0xFFCACACA))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller: branchNameController,
                      decoration: InputDecoration(labelText: 'Branch Name',
                          labelStyle: TextStyle( color:Color(0xFFCACACA))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller:passingYearController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Passing Year',
                          labelStyle: TextStyle( color:Color(0xFFCACACA))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(

              color: Colors.white,
              child:  Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Create Your Password",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontFamily: 'FontMain',
                  ),),
                ],),
            ),
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 37, right: 58),
              child: TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null; // Return null if the input is valid
                },
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFFCACACA),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFFCACACA),
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.lock,
                      color: Color(0xFF9B9B9B),
                      size: 22,
                    ),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color:  Color(0xFF9B9B9B),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 37, right: 58),
              child: TextFormField(
                controller: conformPasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null; // Return null if the input is valid
                },
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFFCACACA),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Color(0xFFCACACA),
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.lock,
                      color: Color(0xFF9B9B9B),
                      size: 22,
                    ),
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color:  Color(0xFF9B9B9B),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 35,),
            ElevatedButton(onPressed: (){

            },style: ElevatedButton.styleFrom(
                  backgroundColor:const Color(0xFFF13640),
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(20)
                  ),
            ), child: Text("Submit",style: TextStyle(
              color:Colors.white,
              fontWeight:FontWeight.w700,
               fontSize:25,
            ),))


          ],
        ),
      ),
    );
  }
}
