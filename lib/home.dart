// import 'package:flutter/material.dart';
// import 'package:sign_up_in/main_tech.dart';
// import 'package:sign_up_in/main_non_tech.dart';
// import 'package:sign_up_in/main_sig.dart';
// import 'package:sign_up_in/wel_screen.dart';
//
// import 'drawer.dart';
//
// class Intro extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       drawer: nav_bar(),
//         appBar: AppBar(
//           backgroundColor: Colors.blue[600],
//           title: Container(
//             width: 454,
//             height: 40,
//             margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
//             decoration: BoxDecoration(
//               color: Colors.black26,
//               //borderRadius: BorderRadius.all(Radius.circular(22.0)),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Expanded(
//                   flex: 1,
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 8.0),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "Search",
//                           hintStyle: TextStyle(color: Colors.white),
//                           icon: Icon(Icons.search, color: Colors.white,)
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 0,
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 3.0),
//                       child: Row(
//                         children: <Widget>[
//                           IconButton(
//                               onPressed: (){},
//                               icon: Icon(Icons.mic, color: Colors.white,)),
//                           VerticalDivider(color: Colors.white54,),
//                           IconButton(
//                               onPressed: () {} ,
//                               icon: Icon(Icons.more_vert, color: Colors.white,))
//                         ],
//                       ),
//                     )),
//               ],
//             ),
//           ),
//
//         ),
//         backgroundColor: Colors.grey[900],
//         body:SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child:Row(
//                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
//                     )
//                 ),
//                 Padding(
//                     padding:const EdgeInsets.all(18.0),
//                     child:Text(
//                       'EXPLORE',
//                       style: TextStyle(
//                           color:Colors.white,
//                           fontSize:28.0,
//                           fontWeight:FontWeight.bold
//                       ),
//                       textAlign: TextAlign.center,
//                     )
//                 ),
//                 SizedBox(height: 40),
//                 Padding(
//                     padding:const EdgeInsets.all(12.0),
//                     child:Center(
//                         child:Wrap(
//                           spacing:10.0,
//                           runSpacing:70.0,
//                           children: [
//                             SizedBox(
//                                 width:160.0,
//                                 height:160.0,
//
//                                 child:Card(
//                                     color:Color.fromARGB(255, 21, 21, 21),
//                                     // elevation:2.0,
//                                     shape:RoundedRectangleBorder(
//                                       borderRadius:BorderRadius.circular(8.0),
//                                     ),
//                                     child:Center(
//                                         child:Padding(
//                                             padding:const EdgeInsets.all(8.0),
//                                             child:Column(
//                                               children: [
//                                                 Image.asset("assets/images/technical.png",width: 40,),
//                                                 SizedBox(height:10.0),
//                                                 ListTile(
//                                                     title:
//                                                     Center(
//                                                       child: Text('TECHNICAL',style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontSize: 15.0,
//                                                       ),),
//                                                     ),
//                                                     onTap: () {
//                                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(),));
//                                                     }
//                                                 ),
//
//                                                 SizedBox(height:5.0),
//                                                 Text("8 Items",style:TextStyle(
//                                                   color: Colors.white,
//                                                   fontWeight: FontWeight.w100,
//                                                 ))
//                                               ],
//                                             )
//                                         )
//                                     )
//                                 )
//                             ),
//                             SizedBox(
//                                 width:160.0,
//                                 height:160.0,
//                                 child:Card(
//                                     color:Color.fromARGB(255, 21, 21, 21),
//                                     elevation:2.0,
//                                     shape:RoundedRectangleBorder(
//                                       borderRadius:BorderRadius.circular(8.0),
//                                     ),
//                                     child:Center(
//
//                                         child:Container(
//                                           child: Padding(
//                                               padding:const EdgeInsets.all(8.0),
//                                               child:Column(
//                                                 children: [
//                                                   Image.asset("assets/images/non.png",width:40),
//                                                   SizedBox(height:10.0),
//                                                   ListTile(
//                                                       title:
//                                                       Center(
//                                                         child: Text('NON-TECHNICAL',style: TextStyle(
//                                                           color: Colors.white,
//                                                           fontWeight: FontWeight.bold,
//                                                           fontSize: 15.0,
//                                                         ),
//
//                                                         ),
//                                                       ),
//                                                       onTap: () {
//                                                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Non_Home(),));
//
//                                                       }
//                                                   ),
//
//                                                   SizedBox(height:5.0),
//                                                   Text("2Items",style:TextStyle(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.w100,
//                                                   ))
//                                                 ],
//                                               )
//                                           ),
//                                         )
//                                     )
//                                 )
//                             ),
//                             SizedBox(
//                                 width:160.0,
//                                 height:160.0,
//                                 child:Card(
//                                     color:Color.fromARGB(255, 21, 21, 21),
//                                     elevation:2.0,
//                                     shape:RoundedRectangleBorder(
//                                       borderRadius:BorderRadius.circular(8.0),
//                                     ),
//                                     child:Center(
//
//                                         child:Container(
//                                           child: Padding(
//                                               padding:const EdgeInsets.all(8.0),
//                                               child:Column(
//                                                 children: [
//                                                   Image.asset("assets/images/sig.png",width:70),
//                                                   SizedBox(height:10.0),
//                                                   ListTile(
//                                                     title: Center(
//                                                       child: Text('SIGS',style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontSize: 15.0,
//                                                       ),),
//                                                     ),
//                                                     onTap: (){
//                                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> MySig(),));
//                                                     },
//                                                   ),
//
//                                                   SizedBox(height:5.0),
//                                                   Text("2Items",style:TextStyle(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.w100,
//                                                   ))
//                                                 ],
//                                               )
//                                           ),
//                                         )
//                                     )
//                                 )
//                             ),
//                             SizedBox(
//                                 width:160.0,
//                                 height:160.0,
//                                 child:Card(
//                                     color:Color.fromARGB(255, 21, 21, 21),
//                                     elevation:2.0,
//                                     shape:RoundedRectangleBorder(
//                                       borderRadius:BorderRadius.circular(8.0),
//                                     ),
//                                     child:Center(
//
//                                         child:Container(
//                                           child: Padding(
//                                               padding:const EdgeInsets.all(8.0),
//                                               child:Column(
//                                                 children: [
//                                                   Image.asset("assets/images/ngo.jpg",width:40),
//                                                   SizedBox(height:10.0),
//                                                   ListTile(
//                                                     title: Center(
//                                                       child: Text('NGO',style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontWeight: FontWeight.bold,
//                                                         fontSize: 15.0,
//                                                       ),),
//                                                     ),
//                                                     onTap: (){
//                                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomeScreen(),));
//                                                     },
//                                                   ),
//
//                                                   SizedBox(height:5.0),
//                                                   Text("2Items",style:TextStyle(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.w100,
//                                                   ))
//                                                 ],
//                                               )
//                                           ),
//                                         )
//                                     )
//                                 )
//                             ),
//
//                           ],
//
//                         )
//                     )
//                 )
//               ],
//             )
//         )
//     );
//   }
// }
//
