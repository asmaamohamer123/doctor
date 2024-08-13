import 'package:flutter/material.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //its a row with a column
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/splash.png'),
                      ),

                      const SizedBox(
                    height: 0.0,
                  ),
            const Row(
              children:[
                 Text(  "التاسكات"     , 
                 style: TextStyle(
                         // color: Colors.black26,
                          //color: Color(0xff2e386b),
                           color: Color.fromARGB(255, 13, 73, 194),
                          fontSize: 30,
                           fontWeight: FontWeight.bold,
                         ),
                 ),
              ],
              ),
              ],
            ),
            // Center(
            //             child:
            //            Container(
            //             height: 180,
            //             child: Image.asset('assets/images/welcom.png'),
            //           ),
            //           ),

          ],
        ),
      ),


    ) ;
  }
}