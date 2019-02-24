import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstApp(),
  ));
}
 class FirstApp extends StatefulWidget {
   @override
   _FirstAppState createState() => _FirstAppState();
 }

 class _FirstAppState extends State<FirstApp> {
   var check = new TextEditingController();
   var girildiMi = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/wallpaper.jpg"),fit: BoxFit.cover
            ),
            ),
         child: Column(
           children: <Widget>[
             SizedBox(height: 60,
             ),
             Text("Welcome to the Jungle",
             style: TextStyle(
               color: Colors.white,
               fontSize: 35,
             ),
             ),
             SizedBox(width: 20,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(

                            image: girildiMi == true ?
                                AssetImage("images/dag-2.jpg")
                                :
                                AssetImage("images/dag-1.jpg"),
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                     Text(
                       girildiMi == true ? "Nirvana - V1"
                           :
                           "Nirvana - V2",
                           style: TextStyle(
                             color: Colors.white,
                           ),
                     ),
                    ],
                 ),
                 Column(
                   children: <Widget>[
                     Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         image: DecorationImage(

                           image: girildiMi == true ?
                           AssetImage("images/dag-1.jpg")
                               :
                           AssetImage("images/dag-2.jpg"),
                           fit: BoxFit.cover,

                         ),
                       ),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Text(
                       girildiMi == true ? "Nirvana - V2"
                           :
                       "Nirvana - V1",
                       style: TextStyle(
                         color: Colors.white,
                       ),
                     ),
                   ],
                 ),
               ],
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 40),
               child: TextField(
                 controller: check,
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Are you admin?",
                       labelText: "Enter the correct password",
                   icon: Icon(Icons.lock),
                 ),
               ),
             ),
             SizedBox(
               height: 20,
             ),
             MaterialButton(
               onPressed: (){
                 if(check.text == "123"){
                   girildiMi = true;
                       setState(() {

                       });
                 }else{
                   girildiMi = false;
                       setState(() {

                       });
                 }
               },
               color: Colors.blueAccent,
               child: Text(
                 "Check It!",
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
               
               
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               width: 300, height: 300,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(topRight: Radius.circular(35),bottomLeft: Radius.circular(35)),
                 border: Border.all(
                   color: Colors.black, width: 5,
                 ),
               ),
               child: Icon(
                 girildiMi == false?
                     Icons.lock
                 :
                   Icons.check,
                 size: 90,
               ),
             ),
           ],
         ),
         ),
       );

   }
 }

