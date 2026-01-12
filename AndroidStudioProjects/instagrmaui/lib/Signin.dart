import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagrmaui/signup.dart';

class Signin extends StatefulWidget{
  const Signin({super.key});
  State<Signin> createState()=> _SigninPage();

}
class _SigninPage extends State<Signin>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset(
              'assets/images/Instagram.png',
            ),
            SizedBox(
              height:20
            ),
            Container(
              width: 300,
              child:
            TextFormField(
              decoration:InputDecoration(
                hintText:"Username",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              )
            ),),
            SizedBox(
              height: 20,
            ),
            Container(
              width:300,
              child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                          decoration:InputDecoration(
                              hintText:"Password",
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap:(){},
                        child:Padding(
                          padding:EdgeInsets.only(left: 190),
                          child: Text(
                              "Forgot Password?",
                              style:TextStyle(
                                  color:Colors.blue,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal
                              )
                          )
                        ),


                      ),

                    ]),

            ),
            SizedBox(
              height: 20,

            ),
            ElevatedButton(
              onPressed: (){},
                style:ElevatedButton.styleFrom(
                  minimumSize:Size(300,50),
                  backgroundColor:Colors.blue,
                  foregroundColor:Colors.white,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle:TextStyle(
                    fontSize:15,
                    fontWeight:FontWeight.normal
                  )
                ),
                child: Text('Sign In')

            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child:Column(

                children: [
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                        Image.asset(
                          'assets/images/Icon.png',
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Log In with Facebook',
                          style:TextStyle(
                            color:Colors.blueAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.normal
                          )
                        )
                      ]
                    ),
                  ),
                  SizedBox(
                    height:30
                  ),
                  Text(
                    'OR',
                    style:TextStyle(
                      color:Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    },
                    child: RichText(
                        text:TextSpan(
                            children:[
                              TextSpan(
                                  text:"Don't have an account?",
                                  style:TextStyle(
                                      color:Colors.grey,
                                      fontSize:12
                                  )
                              ),
                              TextSpan(
                                  text:" Sign Up",
                                  style:TextStyle(
                                      color:Colors.blue,
                                      fontSize:15
                                  )
                              )
                            ]
                        )
                    )
                  )

                ],
              )
            )


          ]
        ),
      )
    );
  }

}