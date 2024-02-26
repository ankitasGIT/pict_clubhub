// import 'package:flutter/material.dart';
//
// import 'event_model.dart';
// import 'events_model.dart';
//
// class Coding extends StatefulWidget {
//   const Coding({Key? key}) : super(key: key);
//
//   @override
//   State<Coding> createState() => _CodingState();
// }
//
// class _CodingState extends State<Coding> {
//
//   List<EventModel> eventstype = [];
//   List<EventsModel> events = <EventsModel>[];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     eventstype = getEvents();
//     events = getEventTypes();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Container(
//         child: Stack(
//           children: <Widget>[
//             //SizedBox(height: 30,),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.black
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 50, horizontal: 24),
//               child: Expanded(
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       //Intro
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Expanded(
//                             child: Text("Hello,", style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w700,
//                               fontSize: 22
//                             ),),
//                           ),
//                           SizedBox(height: 6,),
//                           Text("Explore and test your coding skills!", style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 17
//                           ),),
//                           Divider(height: 20, color: Colors.blue,),
//                           SizedBox(height: 25,),
//                           Text("PISB Special Interest Groups", style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                             fontWeight: FontWeight.w700
//                           ),),
//                          //SizedBox(height: 50,),
//
//                           //Events
//                           SizedBox(height: 16,),
//                           SizedBox(
//                             height: 100,
//                             child: Container(
//                               height: 100,
//                               child: ListView.builder(
//                                   itemCount: eventstype.length,
//                                   shrinkWrap: true,
//                                   scrollDirection: Axis.horizontal,
//                                   itemBuilder: (context, index){
//                                     return EventTile(
//                                       imgAssetPath: eventstype[index].imgAssetPath,
//                                       eventType: eventstype[index].eventType,
//                                     );
//                                   }),
//                             ),
//                           ),
//                           Divider(height: 20, color: Colors.blue,),
//                           SizedBox(height: 10,),
//
//                           //Sessions
//                           Text("Sessions", style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                           ),),
//                           Container(
//                             child: ListView.builder(
//                               itemCount: events.length,
//                                 shrinkWrap: true,
//                                 scrollDirection: Axis.vertical,
//                                 itemBuilder: (context, index){
//                                 return SessionTile(
//                                   dest: events[index].dest,
//                                   imgAssetPath: events[index].imgAssetPath,
//                                   date: events[index].date,
//                                   address: events[index].address,
//                                 );
//                                 }),
//                           )
//
//
//                         ],
//                       ),
//
//
//                       // Container(
//                       //   child: Image.asset("asstes/images/cpc1.png", height: 20,),
//                       // )
//
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//
//
//     );
//   }
// }
//
// class EventTile extends StatelessWidget {
//
//    final String imgAssetPath;
//    final String eventType;
//   EventTile({required this.imgAssetPath, required this.eventType});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       padding: EdgeInsets.symmetric(horizontal: 30),
//       margin: EdgeInsets.only(right: 16),
//       decoration: BoxDecoration(
//           color: Colors.white30,
//           borderRadius: BorderRadius.circular(12)
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(imgAssetPath, height: 27,),
//           SizedBox(height: 12,),
//           Text(eventType, style: TextStyle(
//               color: Colors.white
//           ),)
//         ],
//       ),
//     );
//   }
// }
//
//
// class SessionTile extends StatelessWidget {
//
//   final String dest;
//   final String date;
//   final String address;
//   final String imgAssetPath;
//   SessionTile({required this.address, required this.date,
//     required this.imgAssetPath, required this.dest,});
//
//   @override
//
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//
//                 children: <Widget>[
//                   Text(dest),
//                   Row(
//                     children: <Widget>[
//                       Icon(Icons.calendar_month, size: 15,),
//                       SizedBox(height: 8,),
//                       Text(date),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Icon(Icons.location_on, size: 15,),
//                       SizedBox(height: 8,),
//                       Text(address),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Image.asset("assets/images/s0.jpg", height: 50,)
//         ],
//       ),
//     );
//   }
// }
//
