import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Main_6 extends StatelessWidget {
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
                          Icon(Icons.menu,color:Colors.white,size:40.0),
                          Image.asset("assets/images/edc_pict.png",width: 80,height: 80, )
                        ],
                      )
                  ),
                  Padding(
                      padding:const EdgeInsets.all(18.0),
                      child:Text(
                        'EDC-PICT',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize:35.0,
                            fontWeight:FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                  Padding(
                      padding:const EdgeInsets.all(18.0),
                      child:Text(
                        'Entrepreneurship Development Cell PICT,',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize:20.0,
                            fontWeight:FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                  SizedBox(height: 10),
                  Padding(
                      padding:const EdgeInsets.all(18.0),
                      child:Text(
                        "Entrepreneurship Development Cell, PICT firmly believes "
                            "that India needs the drive and innovation of the young "
                            "entrepreneurs. EDC therefore aims at manifesting the latent "
                            "Entrepreneurial spirit of the youth. EDC was established by "
                            "the college students, alumni, industry, and faculty, towards "
                            "the cause of producing quality leaders who contribute to the "
                            "growth and development of mankind. EDC was inaugurated on 4th "
                            "march , 2009.",
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
                        'What We Offer',
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
                                    final url = 'https://edcpict.github.io/EDC_Website/index.html';
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
                                                      Text('The Entrepreneurial Spirt',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                    ],
                                                  )
                                              )
                                          )
                                      )
                                  )),
                              GestureDetector(
                                  onTap: () async {
                                    final url = 'https://edcpict.github.io/EDC_Website/index.html';
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
                                                      Text('Resources',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                    ],

                                                  ),

                                                ),

                                              )
                                          )
                                      )
                                  )),

                              GestureDetector(
                                onTap: () async {
                                  final url = 'https://edcpict.github.io/EDC_Website/index.html';
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
                                                      Image.asset("assets/images/robo_brain.png",width:60,color: Colors.white,),
                                                      SizedBox(height:10.0),
                                                      Text('Pitching Platforms',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),

                                                    ],
                                                  )
                                              ),
                                            )
                                        )
                                    )
                                ),),
                              GestureDetector(
                                onTap: () async {
                                  final url = 'https://edcpict.github.io/EDC_Website/index.html';
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
                                                      Text('Mentors',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),


                                                    ],
                                                  )
                                              ),
                                            )
                                        )
                                    )
                                ),),
                              GestureDetector(
                                onTap: () async {
                                  final url = 'https://edcpict.github.io/EDC_Website/index.html';
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
                                                      Text('Patents/IPO',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),
                                                    ],
                                                  )
                                              ),
                                            )
                                        )
                                    )
                                ),),
                              GestureDetector(
                                onTap: () async {
                                  final url = 'https://edcpict.github.io/EDC_Website/index.html';
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
                                                      Text('Buisness Space',style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0,
                                                      ),),

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
                              // GestureDetector(
                              //   onTap: () async {
                              //     final url = 'https://www.instagram.com/your_instagram_page/';
                              //     await _launchURL(url);
                              //   },
                              //   child: Container(
                              //     decoration: BoxDecoration(
                              //       image: DecorationImage(
                              //         image: AssetImage("assets/images/robo_r&d.png"),
                              //       )
                              //     ),
                              //   ),
                              //
                              // ),

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

