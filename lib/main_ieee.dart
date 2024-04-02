import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'grid.dart';
import 'ieee.dart';

class Main_1 extends StatefulWidget {
  const Main_1({Key? key}) : super(key: key);

  @override
  State<Main_1> createState() => _Main_1State();
}

class _Main_1State extends State<Main_1> {
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
                    Text("IEEE HUB", style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )
                    ),),
                    SizedBox(height: 4,),
                    Text("Credenz Events", style: GoogleFonts.openSans(
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
                  icon: Image.asset("assets/images/logo.png",width: 150,),
                  onPressed: () {

                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Credenz()
        ],
      ),
    );
  }
}
