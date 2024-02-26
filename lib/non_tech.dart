import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_art.dart';
import 'main_debsoc.dart';
import 'main_mun.dart';
import 'main_nss.dart';
import 'main_pictoreal.dart';
import 'main_ted.dart';

class NonTech extends StatelessWidget {
  Item item1 = new Item(
    title: "TEDxPICT",
    subtitle: "March, 14",
    event: "6 events",
    img: "assets/images/ted1.png",
    id: "1",
  );

  Item item2 = new Item(
      title: "DEBSOC",
      subtitle: "April, 29",
      event: "9 events",
      img: "assets/images/debsoc1.png",
      id: "2"
  );
  Item item3 = new Item(
      title: "PICToreal",
      subtitle: "March, 30",
      event: "3 events",
      img: "assets/images/pictoreal.jpg",
      id: "3"
  );
  Item item4 = new Item(
      title: "NSS",
      subtitle: "March, Wednesday",
      event: "3 events",
      img: "assets/images/nss1.png",
      id: "4"
  );

  Item item5 = new Item(
      title: "MUN",
      subtitle: "March, 14",
      event: "6 events",
      img: "assets/images/mun1.png",
      id: "5"
  );

  Item item6 = new Item(
      title: "ART CIRCLE",
      subtitle: "April, 29",
      event: "9 events",
      img: "assets/images/artcircle1.png",
      id: "6"
  );
  // 0xff453658
  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1,item2,item3,item4,item5,item6];
    var color = Colors.black26;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16,right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data){
          return Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[
                    BoxShadow(
                      color:Colors.black,
                      blurRadius: 7,
                    )
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(data.img, width: 42,),
                  SizedBox(
                    height: 14,
                  ),
                  ListTile(
                      title: Center(
                        child: Text(data.title, style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        ),
                      ),
                      onTap: (){
                        if(data.id == "1")
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Main_14(),));
                        }
                        else if(data.id == "2")
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Main_9(),));
                        }
                        else if(data.id == "3")
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Main_10(),));
                        }
                        else if(data.id == "4")
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Main_13(),));
                        }
                        else if(data.id == "5")
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Main_11(),));
                        }
                        else if(data.id == "6")
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Main_12(),));
                        }
                      }
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(data.subtitle, style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          fontWeight: FontWeight.w600
                      )
                  ),),
                  SizedBox(
                    height: 14,
                  ),
                  Text(data.event, style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.w600
                      )
                  ),)
                ],
              )
          );
        }).toList(),
      ),
    );
  }
}

class Item{
  String title;
  String subtitle;
  String event;
  String img;
  String id;
  Item({required this.title,required this.event,required this.img,required this.subtitle, required this.id});
}



