import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MUN extends StatelessWidget {

  Item item1 = new Item(
    title: "Extempore",
    subtitle: "",
    event: "",
    img: "assets/images/extempore.jpg",
  );

  Item item2 = new Item(
    title: "Group Discussion",
    subtitle: "",
    event: "",
    img: "assets/images/group discussion.jpg",
  );
  Item item3 = new Item(
    title: "Debate",
    subtitle: "",
    event: "",
    img: "assets/images/debate.jpg",
  );
  Item item4 = new Item(
    title: "Intra-MUN",
    subtitle: "",
    event: "",
    img: "assets/images/intra mun.png",
  );

  Item item5 = new Item(
    title: "Open MIC",
    subtitle: "",
    event: "",
    img: "assets/images/open mic.jpg",
  );

  Item item6 = new Item(
    title: "FE Induction",
    subtitle: "",
    event: "",
    img: "assets/images/fe induction.jpg",
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



