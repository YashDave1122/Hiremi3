import 'package:flutter/material.dart';
import 'package:hiremi/FresherJob.dart';
import 'package:hiremi/HomePage.dart';

class UserVerificationScreen extends StatefulWidget {
  const UserVerificationScreen({super.key});

  @override
  State<UserVerificationScreen> createState() => _UserVerificationScreenState();
}

class _UserVerificationScreenState extends State<UserVerificationScreen> {
  TimeOfDay time = TimeOfDay.now();
  String? times;
  String? minutes;
  String? year;

  void selectTimePicker() async {
    TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timeOfDay != null && timeOfDay != time) {
      final finalTime = timeOfDay.hour;
      final finalMinutes = timeOfDay.minute;

      setState(() {
        times = finalTime.toString();
        minutes = finalMinutes.toString();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/Back_Button.png',
                        height: 120,
                        width: 120,
                      ),

                      Image.asset(
                        'images/Hiremi_Icon.png',
                        height: 186,
                        width: 186,
                      )
                    ],
                  ),
                  const Positioned(
                    top: 130,
                    left: 100,
                    child: Text(
                      '  Verify Your Details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Text(
                        'College Id / Enrollment No',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                     
                    ],
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your College ID/Enrollement no',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Text(
                        'Your skills',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),

                    ],
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Ex-Developer',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Text(
                        'Rate Your Communication',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),

                    ],
                  ),

                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     SizedBox(width: 45,),
              //     ...List.generate(
              //       5,
              //           (index) => Container(
              //         margin: const EdgeInsets.only(right: 10, top: 10),
              //         decoration: BoxDecoration(
              //           color: Colors.green,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //         height: 25,
              //         width: 36,
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 25,),
              Row(

                children: [
                  SizedBox(width: 45,),
                  Container(
                    width: 40,
                    height: 31,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 40,
                    height: 31,
                   decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(15)
                   ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 40,
                    height: 31,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 40,
                    height: 31,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 40,
                    height: 31,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Text(
                        'Describe Yourself',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),

                    ],
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 234, 234),
                    hintText: 'Type here...',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                  ),
                  maxLength: 300,
                  minLines: 2,
                  maxLines: 10,
                ),
              ),
              const SizedBox(height: 5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Schedule Date',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Schedule Time',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    // width: 148,
                    width: MediaQuery.of(context).size.width * 0.35,

                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter date';
                        }
                        return null; // Return null if the input is valid
                      },
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFCACACA),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color:Color(0xFFCACACA),
                          ),
                        ),
                        hintText: '30 Oct',
                        suffixIcon: IconButton(
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030),
                            );
                          },
                          icon: const Icon(
                            Icons.expand_more,
                          ),
                        ),
                        suffixIconColor: Color(0xFF9B9B9B),
                        hintStyle: const TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    // width: 148,
                    width: MediaQuery.of(context).size.width * 0.35,

                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter valid time';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color:Color(0xFFCACACA),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFCACACA),
                          ),
                        ),
                        prefixIcon: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 12),
                            child: Text(
                              times == null || minutes == null
                                  ? '6 PM'
                                  : '$times : $minutes',
                              style: const TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                        suffixIcon: IconButton(
                          onPressed: () {
                            selectTimePicker();
                          },
                          icon: const Icon(
                            Icons.expand_more,
                          ),
                        ),
                        suffixIconColor:Color(0xFF9B9B9B),
                        hintStyle: const TextStyle(
                          color:Color(0xFF9B9B9B),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                '*If our connection isn\'t possible on the specified date, we\'ll reach out to arrange another suitable time.',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Center(
                child: SizedBox(
                  height: 40,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      ).then(
                            (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF13640),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: const Text(
                      "Sumbit",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),



            ],
          ),
      )
      ),
    );
  }
}
