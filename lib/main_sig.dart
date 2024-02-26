// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sign_up_in/sig.dart';
//
// class MySig extends StatefulWidget {
//
//   @override
//   State<MySig> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MySig> {
//
//   String searchQuery = " ";
//   List<String> content = ["PISB", "PASC", "PCSB"];
//   List<String> filteredContent = [];
//
//   // void filterContent() {
//   //   setState(() {
//   //     filteredContent = content
//   //         .where((item) =>
//   //     content.contains(item) &&
//   //         item.toLowerCase().contains(searchQuery.toLowerCase()))
//   //         .toList();
//   //   });
//   // }
//
//   //0xff392850
//   @override
//   void initState() {
//     // TODO: implement initState
//     filteredContent = content;
//     super.initState();
//   }
//
//   void runFilter(String enteredKey)
//   {
//     List<String> result = [];
//     if(enteredKey.isEmpty)
//       result = content;
//     else{
//       result = content.where((item) => content.contains(item) &&
//           item.toLowerCase().contains(searchQuery.toLowerCase()))
//           .toList();
//     }
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       body:
//       Column(
//         children: <Widget>[
//           SizedBox(height: 80,),
//             Padding(
//               padding: const EdgeInsets.only(left: 16,right: 16),
//               child: Container(
//                 alignment: Alignment.center,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.black12,
//                   //borderRadius: BorderRadius.circular(6),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black,
//                       blurRadius: 7,
//                     )
//                   ],
//                   border: Border(
//                     left: BorderSide(color: Colors.blue, width: 3),
//                   ),
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Search...",
//                           hintStyle: TextStyle(
//                             color: Colors.grey.withOpacity(0.4),
//                             fontSize: 26,
//                             fontWeight: FontWeight.normal,
//                           ),
//                           border: InputBorder.none,
//                         ),
//                         style: TextStyle(
//                           fontSize: 24,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.normal,
//                         ),
//                         onChanged: (value) => runFilter(value),
//                           // Handle the input change here
//                       ),
//                     ),
//                     SizedBox(height: 8.0,),
//                     Expanded(
//                       child: ListView.builder(
//                         itemCount: content.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           final String item = filteredContent[index];
//                           final List<String> parts = item.split(RegExp('(${RegExp.escape(searchQuery)})', caseSensitive: false));
//
//                           return ListTile(
//                             title: RichText(
//                               text: TextSpan(
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                 ),
//                                 children: parts.map<TextSpan>((part) {
//                                   if (part.toLowerCase() == searchQuery.toLowerCase()) {
//                                     return TextSpan(
//                                       text: part,
//                                       style: TextStyle(
//                                         color: Colors.blue,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     );
//                                   } else {
//                                     return TextSpan(text: part);
//                                   }
//                                 }).toList(),
//                               ),
//                             ),
//                             // Add any additional widgets or logic for each item
//                           );
//                         },
//                       ),
//                     ),
//                     Icon(Icons.search, size: 32, color: Colors.white,),
//                   ],
//                 ),
//               ),
//             ),
//
//           SizedBox(
//             height: 40,
//           ),
//           Padding(padding: EdgeInsets.only(left: 16, right: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text("SIG HUB", style: GoogleFonts.openSans(
//                         textStyle: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22,
//                         )
//                     ),),
//                     SizedBox(height: 4,),
//                     Text("Special Interest Groups", style: GoogleFonts.openSans(
//                         textStyle: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 14,
//                         )
//                     ),),
//                   ],
//                 ),
//                 IconButton(
//                   alignment: Alignment.topCenter,
//                   icon: Image.asset("assets/images/admin1.png",width: 150,),
//                   onPressed: () {
//
//                   },
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           sig()
//         ],
//       ),
//     );
//   }
// }
