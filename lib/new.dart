import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class New extends StatelessWidget {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    var launchMode;
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
                          Icon(Icons.menu,color:Colors.white,size:50.0),
                          // Image.asset("assets/images/club3.jpg" )
                        ],
                      )
                  ),
                  Padding(
                      padding:const EdgeInsets.all(18.0),
                      child:Text(
                        'Gamedev',
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
                        "GameDevUtopia is a student-run Game Developers Community in "
                            "India. We were founded as a humble trio of passionate Game"
                            " Developers in the year 2020 at PICT, Pune and today have become"
                            " one of the fastest growing student-run community. We have our "
                            "branches across PICT, Pune and IIIT Kottayam with plans to expand and "
                            "reach multiple colleges across the country. In both of our student chapters, we have "
                            "following teams to handle different aspects of game development!",
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
                        'OUR TEAMS',
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
                            runSpacing:10.0,
                            children: [
                              GestureDetector(
                                  onTap: () async {
                                    final url = 'https://gamedevutopia.in/';
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
                                                      Image.asset("assets/images/game_love2D.png",width: 60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('Love2D Team',style: TextStyle(
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
                                    final url = 'https://gamedevutopia.in/';
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
                                                      Image.asset("assets/images/game_design.png",width:60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('Design Team',style: TextStyle(
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
                                                    Image.asset("assets/images/game_webdev.png",width:60,color: Colors.white,),
                                                    SizedBox(height:10.0),
                                                    Text('Webdev Team',style: TextStyle(
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
                                                    Image.asset("assets/images/game_marketing.png",width:60,color: Colors.white,),
                                                    SizedBox(height:10.0),
                                                    Text('Marketing team',style: TextStyle(
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
                              Text("follow us on",
                                style:TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                        onTap: () async {
                                          final url = 'https://pub.dev/packages/url_launcher';
                                          await _launchURL(url);
                                        },
                                        child:Center(
                                            child:Container(
                                                child: Padding(
                                                  padding:const EdgeInsets.all(8.0),
                                                  child:Row(
                                                    children: [
                                                      Image.asset("assets/images/insta1.png",width:60),
                                                      SizedBox(height:10.0),


                                                    ],

                                                  ),
                                                )
                                            )
                                        )),
                                    GestureDetector(
                                        onTap: () async {
                                          final url = 'https://in.linkedin.com/company/gamedevutopia';
                                          await _launchURL(url);
                                        },
                                        child:Center(
                                            child:Container(
                                                child: Padding(
                                                  padding:const EdgeInsets.all(8.0),
                                                  child:Row(
                                                    children: [
                                                      Image.asset("assets/images/linkd1.png",width:60),
                                                      SizedBox(height:10.0),
                                                      // Text('Buisness Space',style: TextStyle(
                                                      //   color: Colors.white,
                                                      //   fontWeight: FontWeight.bold,
                                                      //   fontSize: 15.0,
                                                      // ),),

                                                    ],

                                                  ),
                                                )
                                            )
                                        ))

                                  ]
                              )

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

