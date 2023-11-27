import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiremi/ViewDetails.dart';

class FresherJob2 extends StatefulWidget {
  const FresherJob2({super.key});

  @override
  State<FresherJob2> createState() => _FresherJob2State();
}

class _FresherJob2State extends State<FresherJob2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 105.0,top: 30),
                      child: Image.asset('images/Back_Button.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 60),
                      child: Text("Fresher Job",style: TextStyle(
                        fontFamily: 'FontMain',
                        fontSize: 28,
                      ),),
                    ),

                  ],

                ),
                Container(
                    width: 220,
                    height: 290,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0,),
                      child: Image.asset('images/Saly-1 (1).png'),
                    )),
              ],
            ),
            Card(

                elevation: 5,
                child:Container(
              height: 180,
              width: 370,
                  child: Row(
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Business Development Associate",style: TextStyle(
                            fontFamily: 'FontMain',

                          ),),
                          Text("Company: Hiremi"),
                          Text("Location:PAN India"),
                          Text("CTC: 10 LPA"),


                        ],
                      ),



                    ]
                  ),
            )),
            SizedBox(height: 35,),
           Container(

             height: 180,
             width: 370,
             child: Card(
               elevation: 5.0,
               child: Stack(
                 children:[
                   Row(
                     children:[
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text("Business Development Associate",style: TextStyle(
                             fontFamily: 'FontMain',

                           ),),
                           Text("Company: Hiremi"),
                           Text("Location:PAN India"),
                           Text("CTC: 10 LPA"),


                         ],
                       ),
                       Align(
                         alignment: Alignment.bottomLeft,
                         child: Padding(
                           padding: const EdgeInsets.only(right:16.0,bottom: 16.0),
                           child: ElevatedButton(onPressed: (){
                             Navigator.push(context,MaterialPageRoute(builder: (context)
                             {
                               return ViewDetails(index: null,);
                             }
                             ),
                             );
                           }, child: Text("hello",style: TextStyle(

                           ),)),
                         ),
                       )
                     ]
                 ),
                 ]
               ),
             ),
           )

          ],
        ),
      ),
    );
  }
}
