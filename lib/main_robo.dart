import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Main_7 extends StatelessWidget {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await canLaunch(uri.toString())) {
      throw "Can't launch $url";
    }
    await launch(
      uri.toString(),
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black45,
      body:SafeArea(
          child: Container(
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu,color:Colors.white,size:40.0),
                          Image.asset("assets/images/robo_pict.jpeg",width: 80,height: 80, )
                        ],
                      )
                  ),
                  Padding(
                      padding:const EdgeInsets.all(18.0),
                      child:Text(
                        'PICT ROBOTICS',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize:35.0,
                            fontWeight:FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                  SizedBox(height: 10),
                  Padding(
                      padding:const EdgeInsets.all(18.0),
                      child:Text(
                        "PICT Robotics is the official team representing PICT at ABU Robcon, an "
                            "international robot championship held every yearOur task mainly "
                            "involves brainstorming, prototyping, testing and implementing various "
                            "mechanisms and subsequently bots every year for ABU Robocon",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize:18.0,
                            fontWeight:FontWeight.bold
                        ),

                      )
                  ),
                  SizedBox(height: 30),
                  Padding(
                      padding:const EdgeInsets.all(18.0),
                      child:Text(
                        'DOMAIN EXPERTIES',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize:25.0,
                            fontWeight:FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                  SizedBox(height: 10),
                  Padding(
                      padding:const EdgeInsets.all(12.0),
                      child:Center(
                          child:Wrap(
                            spacing:10.0,
                            runSpacing:70.0,
                            children: [
                              GestureDetector(
                                  onTap: () async {
                                    final url = 'https://www.pictrobotics.org/';
                                    await _launchURL(url);
                                  },
                                  child:SizedBox(
                                      width:160.0,
                                      height:160.0,

                                      child:Card(
                                          color:Color.fromARGB(255, 21, 21, 21),
                                          // elevation:2.0,
                                          shape:RoundedRectangleBorder(
                                            borderRadius:BorderRadius.circular(8.0),
                                          ),
                                          child:Center(
                                              child:Padding(
                                                  padding:const EdgeInsets.all(8.0),
                                                  child:Column(
                                                    children: [
                                                      Image.asset("assets/images/robo_mec.png",width: 60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('Mechanical',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                      SizedBox(height:5.0),
                                                      Text("2Items",style:TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w100,
                                                      ))
                                                    ],
                                                  )
                                              )
                                          )
                                      )
                                  )),
                              GestureDetector(
                                  onTap: () async {
                                    final url = 'https://www.pictrobotics.org/';
                                    await _launchURL(url);
                                  },
                                  child:SizedBox(
                                      width:160.0,
                                      height:160.0,
                                      child:Card(
                                          color:Color.fromARGB(255, 21, 21, 21),
                                          elevation:2.0,
                                          shape:RoundedRectangleBorder(
                                            borderRadius:BorderRadius.circular(8.0),
                                          ),
                                          child:Center(

                                              child:Container(
                                                child: Padding(
                                                  padding:const EdgeInsets.all(8.0),
                                                  child:Column(
                                                    children: [
                                                      Image.asset("assets/images/robo_es.png",width:60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('Embedded Systems',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                      SizedBox(height:5.0),
                                                      Text("2Items",style:TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w100,
                                                      ))
                                                    ],

                                                  ),

                                                ),

                                              )
                                          )
                                      )
                                  )),
                              GestureDetector(
                                onTap: () async {
                                  const url = 'https://www.pictrobotics.org/';
                                  await _launchURL(url);
                                },
                                child:SizedBox(
                                    width:160.0,
                                    height:160.0,
                                    child:Card(
                                        color:Color.fromARGB(255, 21, 21, 21),
                                        elevation:2.0,
                                        shape:RoundedRectangleBorder(
                                          borderRadius:BorderRadius.circular(8.0),
                                        ),
                                        child:Center(

                                            child:Container(
                                              child: Padding(
                                                  padding:const EdgeInsets.all(8.0),
                                                  child:Column(
                                                    children: [
                                                      Image.asset("assets/images/robo_pro.png",width:60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('Programming',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                      SizedBox(height:5.0),
                                                      Text("2Items",style:TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w100,
                                                      ))
                                                    ],
                                                  )
                                              ),
                                            )
                                        )
                                    )
                                ),),

                              SizedBox(
                                  width:160.0,
                                  height:160.0,
                                  child:Card(
                                      color:Color.fromARGB(255, 21, 21, 21),
                                      elevation:2.0,
                                      shape:RoundedRectangleBorder(
                                        borderRadius:BorderRadius.circular(8.0),
                                      ),
                                      child:Center(

                                          child:Container(
                                            child: Padding(
                                                padding:const EdgeInsets.all(8.0),
                                                child:Column(
                                                  children: [
                                                    Image.asset("assets/images/robo_brain.png",width:60,color: Colors.white,),
                                                    SizedBox(height:10.0),
                                                    Text('Brainstorming',style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15.0,
                                                    ),),
                                                    SizedBox(height:5.0),
                                                    Text("2Items",style:TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w100,
                                                    ))
                                                  ],
                                                )
                                            ),
                                          )
                                      )
                                  )
                              ),
                              GestureDetector(
                                onTap: () async {
                                  const url = 'https://www.pictrobotics.org/';
                                  await _launchURL(url);
                                },
                                child:SizedBox(
                                    width:160.0,
                                    height:160.0,
                                    child:Card(
                                        color:Color.fromARGB(255, 21, 21, 21),
                                        elevation:2.0,
                                        shape:RoundedRectangleBorder(
                                          borderRadius:BorderRadius.circular(8.0),
                                        ),
                                        child:Center(

                                            child:Container(
                                              child: Padding(
                                                  padding:const EdgeInsets.all(8.0),
                                                  child:Column(
                                                    children: [
                                                      Image.asset("assets/images/robo_work.png",width:60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('Workshops',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                      SizedBox(height:5.0),
                                                      Text("2Items",style:TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w100,
                                                      ))
                                                    ],
                                                  )
                                              ),
                                            )
                                        )
                                    )
                                ),),
                              GestureDetector(
                                onTap: () async {
                                  final url = 'https://www.pictrobotics.org/';
                                  await _launchURL(url);
                                },
                                child:SizedBox(
                                    width:160.0,
                                    height:160.0,
                                    child:Card(
                                        color:Color.fromARGB(255, 21, 21, 21),
                                        elevation:2.0,
                                        shape:RoundedRectangleBorder(
                                          borderRadius:BorderRadius.circular(8.0),
                                        ),
                                        child:Center(

                                            child:Container(
                                              child: Padding(
                                                  padding:const EdgeInsets.all(8.0),
                                                  child:Column(
                                                    children: [
                                                      Image.asset("assets/images/robo_r&d.png",width:60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('R & D',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                      SizedBox(height:5.0),
                                                      Text("2Items",style:TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w100,
                                                      ))
                                                    ],
                                                  )
                                              ),
                                            )
                                        )
                                    )
                                ),),
                              Text('for more details ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color:Colors.white,
                                ),),
                              InkWell(
                                  onTap: ()async {
                                    final url = 'https://gamedevutopia.in/';
                                    await _launchURL(url);
                                  },
                                  child:Container(
                                      decoration:BoxDecoration(

                                          image:DecorationImage(
                                            image: AssetImage("assets/images/insta1.png"),

                                          ))
                                  ))

                            ],

                          )
                      )
                  ),

                ],
              ),

            ),

          )

      ),



    );
  }
}

