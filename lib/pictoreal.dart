import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pictoreal extends StatelessWidget {

  Item item1 = new Item(
    title: "CAREER GUIDANCE",
    subtitle: "",
    event: "",
    img: "assets/images/career guidance.png",
  );

  Item item2 = new Item(
    title: "MANTHAN",
    subtitle: "",
    event: "",
    img: "assets/images/manthan.png",
  );
  Item item3 = new Item(
    title: "PICS-O-REEL",
    subtitle: "",
    event: "",
    img: "assets/images/pics o reel.png",
  );
  Item item4 = new Item(
    title: "BLOOD DONATION",
    subtitle: "",
    event: "",
    img: "assets/images/blood donation.png",
  );

  Item item5 = new Item(
    title: "DONATION DRIVE",
    subtitle: "",
    event: "",
    img: "assets/images/donation drive.png",
  );

  Item item6 = new Item(
    title: "BE PHOTOSHOOT",
    subtitle: "",
    event: "",
    img: "assets/images/be photoshoot.png",
  );
  Item item7 = new Item(
    title: "PARICHAY",
    subtitle: "",
    event: "",
    img: "assets/images/parichay.png",
  );
  Item item8 = new Item(
    title: "PICTOSOCIAL VISIT",
    subtitle: "",
    event: "",
    img: "assets/images/pictosocial visit.png",
  );
  Item item9 = new Item(
    title: "INTERVIEWS",
    subtitle: "",
    event: "",
    img: "assets/images/interviews.png",
  );

  // 0xff453658
  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1,item2,item3,item4,item5,item6,item7,item8];
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



