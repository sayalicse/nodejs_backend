import 'package:flutter/material.dart';

import 'Signin.dart';

class Signup extends StatefulWidget{
  const Signup({super.key});
  State<Signup> createState()=> _SignupPage();
}
class _SignupPage extends State<Signup>{


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,

     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           Image.asset(
             'assets/images/Instagram.png',
             height: 120,
           ),
           SizedBox(
             height: 20,
           ),
          Container(
            width: 300,
            child: TextFormField(

              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
           SizedBox(
             height: 20,
           ),
           Container(
             width: 300,
             child: TextFormField(
               decoration: InputDecoration(
                 hintText: 'Password',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
             ),),
             ),
           ),
           SizedBox(
             height: 20,
           ),
           Container(
             width: 300,
             child:TextFormField(
               decoration: InputDecoration(
                  hintText: 'Full Name',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                 )
             )


           ),),
           SizedBox(
             height: 20,
           ),
           Container(
             width: 300,
             child: TextFormField(
               decoration: InputDecoration(
                 hintText: 'Username',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),

                 ),
               )
                 ),),
           SizedBox(
             height: 20,
           ),
           ElevatedButton(onPressed: ()

           {},
             style:ElevatedButton.styleFrom(
               minimumSize: Size(300, 50),
               backgroundColor: Colors.blue,
               foregroundColor:Colors.white,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
              textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
              )
             ),child: Text('Sign Up'),),
           // SizedBox(
           //   height: 30,
           // ),
           // Text(
           //   'Switch account',
           //   style: TextStyle(
           //     color:Colors.blueAccent,
           //     fontSize: 16,
           //     fontWeight: FontWeight.normal
           //   ),),
           SizedBox(
             height: 30,
           ),
           GestureDetector(
             onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder:(context)=>Signin()),
               );
             },
             child:Container(
               child:
               RichText(
                 text:TextSpan(
                     children: [
                       TextSpan(
                           text:"Already have an account?",
                           style:TextStyle(
                               color:Colors.grey,
                               fontSize: 12
                           )
                       ),
                       TextSpan(
                         text:"  Sign In",
                         style:TextStyle(
                             color:Colors.blue,
                             fontSize: 15
                         ),
                       ),
                     ]
                 ),
               ),)
           )



         ],
       ),
     ),
   );
  }
}