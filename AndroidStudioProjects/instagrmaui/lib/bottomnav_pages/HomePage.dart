import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  State<HomePage>createState()=> _Homepage();
}
class _Homepage extends State<HomePage>{
  final List<Map<String,String>>userstatus=[
    {
      "img":"assets/images/london.jpg",
      "username":"sayalip"
    },
    {
      "img":"assets/images/france.jpg",
      "username":"say_p"
    },
    {
      "img":"assets/images/germeny.jpg",
      "username":"mana"
    },
    {
      "img":"assets/images/italy.jpg",
      "username":"manali"
    },
    {
      "img":"assets/images/melbern.jpg",
      "username":"manasi"
    },
    {
      "img":"assets/images/nyc.jpg",
      "username":"jyotsana"
    },
    {
      "img":"assets/images/poland.jpg",
      "username":"praju"
    },


  ];
@override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 100,
      elevation: 0,
      leading: Icon(Icons.add, color: Colors.white),
      title: Center(

        child:

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 40,
            child: Image.asset('assets/images/Instagram.png'),
          ),
        ),
      ),

      actions: [


        const Icon(Icons.favorite_border, color: Colors.white),


      ],
    ),
    body:
       Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Column(

                children: [
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: userstatus.length+1,
                        itemBuilder:(context,index){
                        if(index==0){
                          return Padding(
                              padding:EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage('assets/images/flower.jpg'),
                                    ),
                                    Positioned(
                                        bottom: -0.3,
                                        right: -0.3,
                                        child: Container(
                                            height: 22,
                                            width: 22,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue

                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 15,
                                            )
                                        )
                                    ),
                                    ],

                                ),

                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Your Status',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                  ),
                                )
                              ],
                            )
                          );
                        }
                        final user=userstatus[index-1];

                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   gradient: LinearGradient(colors: [
                                     Colors.purple,
                                     Colors.pink,
                                     Colors.deepOrange
                                   ])
                                 ),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(user['img']!),
                                )
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                user['username']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                                ),
                              )
                            ]
                          )
                        );
                        } ),
                  )
                ],
              ),

            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:LinearGradient(colors: [
                      Colors.purple,
                      Colors.pink,
                      Colors.deepOrange

                    ])
                  ),
                  child: CircleAvatar(
                    radius: 15,
                    child: Icon(Icons.done,


                    ),

                  )
                ),
                SizedBox(
                  width: 10,
                ),
                Text("You've seen the latest posts from accounts you follow."
                ,style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12
                ),
                )

              ]
            )
          ],
        ),


      ),

  );
}


}