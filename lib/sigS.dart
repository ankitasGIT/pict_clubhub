import 'package:flutter/material.dart';

import 'data1.dart';
import 'events.dart';
import 'events_model.dart';
class MySig extends StatefulWidget {
  const MySig({Key? key}) : super(key: key);

  @override
  State<MySig> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MySig> {
  List<EventTypeModel> eventsType=[];
  List<EventsModel> events = [];
  List<EventsModel> events_cpc = [];
  @override
  void initState(){
    eventsType=getEventsTypes();
    events=getEvents();
    events_cpc = Events_cpc();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:Stack(
              children:<Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical:20,horizontal: 24),
                    child:Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:<Widget>[
                          Row(
                              children:<Widget>[
                                //Image.asset("assets/images/ngo1.png",height:30),
                                SizedBox(width:8),
                                // Row(
                                //   children: [
                                //     Text("Sigs",
                                //       style: TextStyle(
                                //         color:Colors.white,
                                //         fontSize: 22,
                                //       ),)
                                //   ],
                                // )
                              ]
                          ),
                          SizedBox(height:20),
                          Row(
                            children: <Widget>[
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget>[
                                    // Text("Hello",
                                    //     style:TextStyle(
                                    //         color: Colors.white,
                                    //         fontWeight:FontWeight.w700,
                                    //         fontSize: 22
                                    //     )),
                                    SizedBox(height:6),
                                    // Text("lets explorehweeuitu jteuwg",
                                    //     style:TextStyle(
                                    //       color:Colors.white,
                                    //       fontSize: 17,
                                    //     ))
                                  ]
                              ),
                              Spacer(),
                              Container(
                                  //child:Image.asset("assets/images/nat1.jpg",height:30)
                              )
                            ],
                          ),
                          SizedBox(height:20),

                          //ALL EVENTS
                          Text("All SIGS",style:TextStyle(
                            color: Colors.white,
                            fontSize:20,
                          )),
                          SizedBox(height:13,),
                          Container(
                              height:100,
                              child:ListView.builder(
                                  itemCount:eventsType.length ,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:(context,index){
                                    return EventTile(
                                      imgAssetPath: eventsType[index].imgAssetPath,
                                      eventType:eventsType[index].eventType,
                                    );
                                  })
                          ),
                          SizedBox(height:20),
                          Text("Sessions",style:TextStyle(
                            color: Colors.white,
                            fontSize:20,
                          )),
                          Expanded(
                              child:ListView.builder(
                                  itemCount:events.length,
                                  shrinkWrap: true,
                                  itemBuilder:(context,index){
                                    return PopularEventTile(
                                      desc:events[index].desc,
                                      imgAssetPath: events[index].imgAssetPath,
                                      date: events[index].date,
                                      venue: events[index].venue,

                                    );
                                  }
                              )
                          )
                        ]
                    )
                )
              ]
          )
      ),
    );
  }
}

class EventTile extends StatelessWidget{

  late String imgAssetPath;
  late String eventType;
  EventTile({required this.imgAssetPath, required this.eventType});
  @override
  Widget build(BuildContext context){
    return Container(
        alignment: Alignment.center,
        padding:EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(right:16),
        decoration: BoxDecoration(
          color:Color(0xff29404E),
          borderRadius: BorderRadius.circular(12),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Image.asset(imgAssetPath,height:40),
            SizedBox(height:12),
            Text(eventType,
                style:TextStyle(
                  color: Colors.white,
                ))
          ],
        )
    );
  }

}
class PopularEventTile extends StatelessWidget {
  final String desc;
  final String date;
  final String venue;
  final String imgAssetPath;
  PopularEventTile({required this.venue,required this.date,required this.imgAssetPath,required this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.blueGrey[900],
          borderRadius: BorderRadius.circular(12),
        ),
        child:Row(
          children: <Widget>[
            Expanded(
              child:Container(
                width: MediaQuery.of(context).size.width-100,
                padding:EdgeInsets.only(left: 10) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(desc,style:TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),),
                    SizedBox(height: 5,),
                    Row(
                        children:<Widget>[
                          Icon(Icons.calendar_month,
                            color: Colors.white,),
                          SizedBox(width:8),
                          Text(venue,style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),)
                        ]
                    ),
                    SizedBox(height: 3,),
                    Row(
                        children:<Widget>[
                          Icon(Icons.location_pin,
                            color: Colors.white,),
                          SizedBox(width:8),
                          Text(venue,style:TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),)
                        ]
                    ),
                  ],
                ),
              ),),
            ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
                child:Image.asset("assets/images/sig1.png",height:80,width:100,fit:BoxFit.cover)),
          ],
        )
    );
  }
}

