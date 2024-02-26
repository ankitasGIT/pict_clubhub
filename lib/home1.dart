import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_in/main_non_tech.dart';
import 'package:sign_up_in/main_tech.dart';
import 'package:sign_up_in/sigS.dart';
import 'package:url_launcher/url_launcher.dart';
import 'drawer.dart';

class Dash extends StatelessWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: nav_bar(),
      appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu,
                color: Colors.white,
                size: 39),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
              );
            }
          ),
        //title: Text(".appable/", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20,top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              
            ),

          )
        ],
      ),


      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search & intro
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.blue, width: 3),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.4),
                            fontSize: 26,
                            fontWeight: FontWeight.normal,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                        onChanged: (value) {
                          // Handle the input change here
                        },
                      ),
                    ),
                    Icon(Icons.search, size: 35, color: Colors.white,),
                  ],
                ),
              ),


              const SizedBox(height: 15.0,),
              //Text("Welcome,", style: txtTheme.headlineSmall?.apply(color: Colors.white,fontWeightDelta: 3),),
              //Text("To HUB of Clubs", style: txtTheme.displaySmall?.apply(color: Colors.white),),
              const SizedBox(height: 15.0,),


              //const SizedBox(height: 20.0,),


              //Categories

              SizedBox(height: 5,),
              Text("All Clubs", style: TextStyle(color: Colors.white, fontSize: 18),),
              SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 130,

                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MySig()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: SizedBox(
                            width: 120,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/sig1.png",height: 70,),
                                SizedBox(height: 8,),
                                Text("SIG's",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 130,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MySig()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: SizedBox(
                            width: 120,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/coding.png",height: 70,),
                                SizedBox(height: 8,),
                                Text("Coding",
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 130,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: SizedBox(
                            width: 120,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/technical1.png",height: 70,),
                                SizedBox(height: 8,),
                                Text("Technical",
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 130,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Non_Home()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: SizedBox(
                            width: 120,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/cultura.png",height: 70,),
                                SizedBox(height: 8,),
                                Text("Cultural",
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40.0,),

              Text("Popular Sessions", style: TextStyle(color: Colors.white, fontSize: 18),),
              const SizedBox(height: 16.0,),
              //Banners
              SingleChildScrollView(
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
                      child:
                      SizedBox(
                        child: Row(
                          children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.transparent
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:  [
                                            Flexible(
                                                child: Icon(Icons.bookmark, color: Colors.black,)),
                                            SizedBox(height: 10,),
                                            Flexible(child: Image(image: AssetImage("assets/images/s0.jpg"),height:140,width: 180,)),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(child: Icon(Icons.calendar_month, color: Colors.black,)),
                                            (Text("20th May",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                        ),
                                        const SizedBox(height: 15,),
                                        Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(child: Icon(Icons.access_time, color: Colors.black,)),
                                              (Text("11:00 AM",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                        ),

                                        const SizedBox(height: 15,),
                                        Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(child: Icon(Icons.location_on_sharp, color: Colors.black,)),
                                              (Text("A1-311",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                        ),
                                        const SizedBox(height: 25,),
                                        Text("Engineering 101:", style: txtTheme.headlineSmall?.apply(color: Colors.black), overflow: TextOverflow.ellipsis,),
                                        Text("Experience with UI/UX", style: txtTheme.bodyMedium?.apply(color: Colors.black), overflow: TextOverflow.ellipsis),
                                      ],
                                    ),
                                  ),
                                )
                          ],
                        ),
                      ),

                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
                      child:
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  [
                                        Flexible(child: Icon(Icons.bookmark, color: Colors.black,)),
                                        Flexible(child: Image(image: AssetImage("assets/images/nss1.png"))),
                                      ],
                                    ),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Icon(Icons.calendar_month, color: Colors.black,)),
                                          (Text("21st-May, 11.59 pm",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                    ),
                                    const SizedBox(height: 15,),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Icon(Icons.access_time, color: Colors.black,)),
                                          (Text("11:00 AM",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                    ),

                                    const SizedBox(height: 15,),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                              child: Icon(Icons.link, color: Colors.black,)
                                          ),
                                          Flexible(
                                            child: GestureDetector(
                                              onTap: () async{
                                                const url = 'http://bit.ly/CR23PICT';
                                                if (await canLaunchUrl(url as Uri)) {
                                                await launchUrl(url as Uri);
                                                } else {
                                                throw 'Could not launch $url';
                                                }
                                              },
                                                child: Text(
                                                  "http://bit.ly/CR23PICT",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                  fontSize: 16,
                                                  decoration: TextDecoration.underline),)),

                                          )
                                        ]

                                    ),
                                    const SizedBox(height: 25,),
                                    Text("PICT NSS:", style: txtTheme.headlineSmall?.apply(color: Colors.black), overflow: TextOverflow.ellipsis,),
                                    Text("Volunteer Recruitment Drive", style: txtTheme.bodyMedium?.apply(color: Colors.black), overflow: TextOverflow.ellipsis),


                                    const SizedBox(height: 15,),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                              child: Icon(Icons.link, color: Colors.black,)
                                          ),
                                          Flexible(
                                            child: GestureDetector(
                                                onTap: () async{
                                                  const url = 'http://bit.ly/CR23PICT';
                                                  if (await canLaunchUrl(url as Uri)) {
                                                    await launchUrl(url as Uri);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },
                                                child: Text(
                                                  "http://bit.ly/CR23PICT",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      decoration: TextDecoration.underline),)),

                                          )
                                        ]

                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
                      child:
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  [
                                        Flexible(child: Icon(Icons.bookmark, color: Colors.black,)),
                                        Flexible(
                                            child: Image(
                                              image: AssetImage("assets/images/gdsc.jpg"),height:140,width: 180)),
                                      ],
                                    ),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Icon(Icons.calendar_month, color: Colors.black,)),
                                          (Text("29st-May, 6-10 pm",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                    ),
                                    const SizedBox(height: 15,),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Icon(Icons.access_time, color: Colors.black,)),
                                          (Text("120 min",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                    ),

                                    const SizedBox(height: 15,),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                              child: Icon(Icons.link, color: Colors.black,)
                                          ),
                                          Flexible(
                                            child: GestureDetector(
                                                onTap: () async{
                                                  const url = 'http://bit.ly/CR23PICT';
                                                  if (await canLaunchUrl(url as Uri)) {
                                                    await launchUrl(url as Uri);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },
                                                child: Text(
                                                  "http://bit.ly/CR23PICT",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      decoration: TextDecoration.underline),)),

                                          )
                                        ]

                                    ),
                                    const SizedBox(height: 25,),
                                    Text("*GDSC PICT", style: txtTheme.headlineSmall?.apply(color: Colors.black), overflow: TextOverflow.ellipsis,),
                                    Text("CodeQuest Trivia Quiz!", style: txtTheme.bodyMedium?.apply(color: Colors.black), overflow: TextOverflow.ellipsis),
                                    Text("Only For FE's", style: txtTheme.bodyMedium?.apply(color: Colors.black), overflow: TextOverflow.ellipsis),


                                    // const SizedBox(height: 15,),
                                    // Row(
                                    //     crossAxisAlignment: CrossAxisAlignment.start,
                                    //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Flexible(
                                    //           child: Icon(Icons.link, color: Colors.black,)
                                    //       ),
                                    //       Flexible(
                                    //         child: GestureDetector(
                                    //             onTap: () async{
                                    //               const url = 'http://bit.ly/CR23PICT';
                                    //               if (await canLaunchUrl(url as Uri)) {
                                    //                 await launchUrl(url as Uri);
                                    //               } else {
                                    //                 throw 'Could not launch $url';
                                    //               }
                                    //             },
                                    //             child: Text(
                                    //               "http://bit.ly/CR23PICT",
                                    //               style: TextStyle(
                                    //                   color: Colors.black,
                                    //                   fontSize: 16,
                                    //                   decoration: TextDecoration.underline),)),
                                    //
                                    //       )
                                    //     ]
                                    //
                                    // ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ),

                    const SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
                      child:
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:  [
                                        Flexible(child: Icon(Icons.bookmark, color: Colors.black,)),
                                        Flexible(
                                            child: Image(
                                                image: AssetImage("assets/images/mun1.png"),height:140,width: 180)),
                                      ],
                                    ),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Icon(Icons.calendar_month, color: Colors.black,)),
                                          (Text("25 May",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                    ),
                                    const SizedBox(height: 15,),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Icon(Icons.access_time, color: Colors.black,)),
                                          (Text("12 Hours remaining",style: TextStyle(color: Colors.black, fontSize: 18),)),]

                                    ),

                                    const SizedBox(height: 15,),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                              child: Icon(Icons.link, color: Colors.black,)
                                          ),
                                          Flexible(
                                              child: Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "For more "
                                                      ),
                                                      TextSpan(
                                                        text: "Register here",
                                                          recognizer: TapGestureRecognizer()..onTap = () async{
                                                              var url = "https://forms.gle/zvT5SFZWeiE32YML6";
                                                              if(await canLaunch(url)){
                                                                await launch(url);
                                                              }else{
                                                                throw "Cannot load";
                                                              }
                                                          }
                                                      )
                                                    ]
                                                  ),
                                                ),
                                              ),
                                                // child: Text(
                                                //   "Register here",
                                                //   style: TextStyle(
                                                //       color: Colors.black,
                                                //       fontSize: 16,
                                                //       decoration: TextDecoration.underline),)),

                                          )
                                        ]

                                    ),
                                    const SizedBox(height: 25,),
                                    Text("Attention!", style: txtTheme.headlineSmall?.apply(color: Colors.black), overflow: TextOverflow.ellipsis,),
                                    Text("PICTMUN Recruitment drive! 🤩", style: txtTheme.bodyMedium?.apply(color: Colors.black), overflow: TextOverflow.ellipsis),


                                    // const SizedBox(height: 15,),
                                    // Row(
                                    //     crossAxisAlignment: CrossAxisAlignment.start,
                                    //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Flexible(
                                    //           child: Icon(Icons.link, color: Colors.black,)
                                    //       ),
                                    //       Flexible(
                                    //         child: GestureDetector(
                                    //             onTap: () async{
                                    //               const url = 'http://bit.ly/CR23PICT';
                                    //               if (await canLaunchUrl(url as Uri)) {
                                    //                 await launchUrl(url as Uri);
                                    //               } else {
                                    //                 throw 'Could not launch $url';
                                    //               }
                                    //             },
                                    //             child: Text(
                                    //               "http://bit.ly/CR23PICT",
                                    //               style: TextStyle(
                                    //                   color: Colors.black,
                                    //                   fontSize: 16,
                                    //                   decoration: TextDecoration.underline),)),
                                    //
                                    //       )
                                    //     ]
                                    //
                                    // ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                  ],
                ),
              ),
    ],
    ),
    ),
      ),
    );
  }
}





