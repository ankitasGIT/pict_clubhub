import 'package:flutter/material.dart';
import 'package:sign_up_in/drawer_content.dart';
import 'package:sign_up_in/home1.dart';
import 'package:sign_up_in/wel_screen.dart';
class nav_bar extends StatelessWidget {
  const nav_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("ANKITA"),
                accountEmail: Text("ankita27@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset("assets/images/admin1.png", width: 90, height: 90,
                    fit: BoxFit.cover,),

                  ),
                ),
              decoration: BoxDecoration(
                //color: Colors.black26,
                image: DecorationImage(
                  image: NetworkImage("https://e1.pxfuel.com/desktop-wallpaper/67/798/desktop-wallpaper-black"
                      "-top-black-backgrounds-25-iphone-plain-black-thumbnail.jpg"),
                  fit: BoxFit.cover,
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.bookmark,color: Colors.blue,),
              title: Text("Bookmark"),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.emoji_events,color: Colors.blue,),
              title: Text("Achievements"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Drawer_2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.notification_add,color: Colors.blue,),
              title: Text("Notifications"),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.info,color: Colors.blue,),
              title: Text("About Us"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));

              },
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.blue,),
              title: Text("Logout"),
              onTap: () =>_showDialog(context),
            ),
            ListTile(
              leading: Icon(Icons.feedback,color: Colors.blue,),
              title: Text("Feedback"),
              onTap: () => null,
            ),
          ],
        ),
    );
  }
}

void _showDialog(BuildContext context){
  showDialog(context:context,
      builder:(context){
        return AlertDialog(
          backgroundColor: Colors.blueGrey[800],
          alignment: Alignment.centerLeft,
          title:Text('Logout',style: TextStyle(
            fontSize: 23,
            color: Colors.white,
          )),
          content: Text('Do you want to logout?',style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          )),
          actions: [
            MaterialButton
              (
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));

              },
              child: Text('yes',style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              ),
            ),
            MaterialButton
              (
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dash()));

              },

              child: Text('no',style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
            ),
          ],
        );
      }
  );
}

