import 'package:flutter/material.dart';

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
          content: Text('Do you want to logout',style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          )),
          actions: [
            MaterialButton
              (
              onPressed: (){
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


// class LogOut extends StatelessWidget {
//   const LogOut({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//         showDialog(context:context,
//             builder:(context){
//               return AlertDialog(
//                 backgroundColor: Colors.blueGrey[800],
//                 alignment: Alignment.centerLeft,
//                 title:Text('Logout',style: TextStyle(
//                   fontSize: 23,
//                   color: Colors.white,
//                 )),
//                 content: Text('Do you want to logout',style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.white,
//                 )),
//                 actions: [
//                   MaterialButton
//                     (
//                     onPressed: (){
//                     },
//                     child: Text('yes',style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                     ),
//                     ),
//                   ),
//                   MaterialButton
//                     (
//                     onPressed: (){
//                     },
//
//                     child: Text('no',style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                     )),
//                   ),
//                 ],
//               );
//             }
//         );
//   }
// }

