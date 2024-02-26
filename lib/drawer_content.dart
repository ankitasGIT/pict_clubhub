import 'package:flutter/material.dart';

class Drawer_2 extends StatelessWidget {
  const Drawer_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            leading: Icon(Icons.favorite, size: 25,),
            //title: Center(child: Text("A C H I E V E M E N T S")),
            expandedHeight: 100,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.blueAccent,
              ),
              title: Text("A C H I E V E M E N T S", style: TextStyle(fontSize: 16),),
            ),
          ),

          //1
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column( // Wrap the Text and IconButton with a Column widget
                      children: [
                        Text(
                          "PICT has been ACCREDITED BY NAAC WITH A+ GRADE",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black45,
                          ),
                        ),
                        IconButton(
                          icon: Image.asset("assets/images/naac1.png", height:200,),
                          onPressed: () {
                            // Handle button press
                          },
                        ),
                        SizedBox(height: 80,),
                        Text(
                          "Thankyou all, the Stakeholders, Students, Parents, Staff, Faculty, Alumni, Management,& Employers.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black45,
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),


          //2
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.white70,
                ),
              ),
            ),
          ),

          //3
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
