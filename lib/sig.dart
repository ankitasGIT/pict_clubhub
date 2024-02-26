// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sign_up_in/all_sigs.dart';
// import 'coding.dart';
// import 'main_pcsb.dart';
//
// class sig extends StatelessWidget {
//   Item item1 = new Item(
//     title: "PISB",
//     subtitle: "March, 14",
//     event: "6 events",
//     img: "assets/images/ieee.png",
//     id: "1",
//   );
//
//   Item item2 = new Item(
//       title: "PASC",
//       subtitle: "April, 29",
//       event: "9 events",
//       img: "assets/images/acm.png",
//       id: "2"
//   );
//   Item item3 = new Item(
//       title: "PCSB",
//       subtitle: "March, 30",
//       event: "3 events",
//       img: "assets/images/csi.png",
//       id: "3"
//   );
//   // 0xff453658
//   @override
//   Widget build(BuildContext context) {
//     List<Item> myList = [item1,item2,item3];
//     var color = Colors.black26;
//     return Flexible(
//       child: GridView.count(
//         childAspectRatio: 1.0,
//         padding: EdgeInsets.only(left: 16,right: 16),
//         crossAxisCount: 2,
//         crossAxisSpacing: 18,
//         mainAxisSpacing: 18,
//         children: myList.map((data){
//           return Container(
//               decoration: BoxDecoration(
//                   color: Colors.black26,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow:[
//                     BoxShadow(
//                       color:Colors.black,
//                       blurRadius: 7,
//                     )
//                   ]
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(data.img, width: 42,),
//                   SizedBox(
//                     height: 14,
//                   ),
//                   ListTile(
//                       title: Center(
//                         child: Text(data.title, style: GoogleFonts.openSans(
//                             textStyle: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600
//                             )
//                         ),
//                         ),
//                       ),
//                       onTap: (){
//                         if(data.id == "1")
//                         {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Coding(),));
//                         }
//                         else if(data.id == "2")
//                         {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=> pasc_sig(),));
//                         }
//                         else if(data.id == "3")
//                         {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Main_3(),));
//                         }
//                       }
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   Text(data.subtitle, style: GoogleFonts.openSans(
//                       textStyle: TextStyle(
//                           color: Colors.white38,
//                           fontSize: 10,
//                           fontWeight: FontWeight.w600
//                       )
//                   ),),
//                   SizedBox(
//                     height: 14,
//                   ),
//                   Text(data.event, style: GoogleFonts.openSans(
//                       textStyle: TextStyle(
//                           color: Colors.white70,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w600
//                       )
//                   ),)
//                 ],
//               )
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
//
//
//
// class Item{
//   String title;
//   String subtitle;
//   String event;
//   String img;
//   String id;
//   Item({required this.title,required this.event,required this.img,required this.subtitle, required this.id});
// }
//
//
//
//
//
//
