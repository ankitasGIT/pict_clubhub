import 'package:flutter/material.dart';

import 'home1.dart';

//ankita27@gmail.com ankita27

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.black,
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg1.png"),
                fit: BoxFit.cover,
                opacity: 1,
              )),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 12),
                    Text("To Hub of Clubs",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5,
                        )),
                    SizedBox(height: 12),
                    Text(
                        "VISION: "
                            "Pune Institute of Computer Technology aspires to be the leader in higher technical education and research of international repute.",

                        style:TextStyle(
                          color:Colors.white70,
                          fontSize: 16,
                          letterSpacing: 1.5,
                        )
                    ),
                    SizedBox(height:40),
                    Text("MISSION: To be leading and most sought after Institute of education and research in emerging engineering and technology disciplines that attracts, retains and sustains gifted individuals of significant potential.",
                      style: TextStyle(color: Colors.white70,
                          fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 1.5),
                    ),
                    SizedBox(height: 20,),
                    InkWell(

                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Dash(),));
                      },
                      child:Ink(
                        child:Container(
                          child:Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size:20,
                          ),
                          padding:EdgeInsets.all(10),
                          decoration:BoxDecoration(
                            color: Colors.grey,
                            borderRadius:BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
