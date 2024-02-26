import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_in/non_tech.dart';
import 'grid.dart';

class Non_Home extends StatefulWidget {

  @override
  State<Non_Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Non_Home> {
  //0xff392850
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NON-TECHNICAL HUB", style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )
                    ),),
                    SizedBox(height: 4,),
                    Text("Non-Technical Events", style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        )
                    ),),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset("assets/images/admin1.png",width: 150,),
                  onPressed: () {

                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          NonTech()
        ],
      ),
    );
  }
}
