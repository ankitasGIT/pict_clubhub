import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Xenia extends StatelessWidget {

  Item item1 = new Item(
    title: "Campus2Corporate",
    subtitle: "May, 12",
    event: "6 events",
    img: "assets/images/nth.jpeg",
  );

  Item item2 = new Item(
    title: "Ninja Coding",
    subtitle: "April, 29",
    event: "9 events",
    img: "assets/images/clash.jpg",
  );
  Item item3 = new Item(
    title: "DataCup",
    subtitle: "March, 30",
    event: "3 events",
    img: "assets/images/datawiz.png",
  );
  Item item4 = new Item(
    title: "CodeStrike",
    subtitle: "March, Wednesday",
    event: "3 events",
    img: "assets/images/web.png",
  );

  Item item5 = new Item(
    title: "XENATHON",
    subtitle: "March, 14",
    event: "6 events",
    img: "assets/images/cretronix.png",
  );

  Item item6 = new Item(
    title: "HackerHouse",
    subtitle: "April, 29",
    event: "9 events",
    img: "assets/images/inquizitive.png",
  );
  Item item7 = new Item(
    title: "Xe-Natus",
    subtitle: "March, 30",
    event: "3 events",
    img: "assets/images/wallstreet.png",

  );
  Item item8 = new Item(
    title: "Decrypto Hunt",
    subtitle: "March, Wednesday",
    event: "3 events",
    img: "assets/images/nth.jpeg",
  );
  Item item9 = new Item(
    title: "Fandom",
    subtitle: "March, Tuesday",
    event: "3 events",
    img: "assets/images/bplan.png",
  );
  Item item10 = new Item(
    title: "CRICWARS",
    subtitle: "March, Tuesday",
    event: "5 events",
    img: "assets/images/enigma.png",
  );
  // 0xff453658
  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1,item2,item3,item4,item5,item6,item7,item8,item9,item10];
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
                        color:Colors.white38,
                        blurRadius: 7,
                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(data.img, width: 45,height: 50,),
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
                      // onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=> GridDashboard(),));
                      // }
                      // InkWell(
                      //   onTap: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(),));
                      //   },
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
          }).toList()

      ),
    );
  }
}

class Item{
  String title;
  String subtitle;
  String event;
  String img;
  Item({required this.title,required this.event,required this.img,required this.subtitle});
}



