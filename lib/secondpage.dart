import 'package:assignment3/firstpage.dart';
import 'package:assignment3/homepage.dart';
import 'package:flutter/material.dart';

 class Secondpage extends StatefulWidget {
   var courses;
   Secondpage({this.courses});
   var names=["NIMA","GOPIKA","AYANA","AMRITHA","MATHEW"];
   @override
   _SecondpageState createState() => _SecondpageState();
 }

 class _SecondpageState extends State<Secondpage> {
   @override
   Widget build(BuildContext context) {

     return  Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0xff900C3F),
         title: Text("STUDENT COURSES DETAILS"),
       ),
       body: SafeArea(
         child: Center(
           child: Column(
             children: [
               SizedBox(height: 20,),
               Center(child: Text("COURSES",style:TextStyle(fontSize: 30),)),
               SizedBox(height: 20,),
               Expanded(


                 child: GridView.builder(gridDelegate:
           SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10,
                 childAspectRatio: 1.2 / 0.4),
             itemCount: widget.courses.length,
             itemBuilder: (BuildContext context, int index) {
                 return Card(
                     color: Color(0xff900C3F),
                   child:ListTile(
                  title: Text(widget.courses[index],style: TextStyle(color: Colors.white)),
                   onTap: (){
                  showalertdialog(context,widget.courses[index]);
                   },
                   ));}),
               ),
                 Padding(
                   padding: const EdgeInsets.only(left: 70,bottom: 20),
                   child: Row(
                       children: [
                         ElevatedButton(style: ElevatedButton.styleFrom(
                   onPrimary: Colors.white,
                       primary: Color(0xff900C3F),fixedSize: Size(100, 50)),
                               onPressed:(){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
                           },
                               child: Text("Home")),
                         SizedBox(width: 30,),
                       ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               onPrimary: Colors.white,
                               primary: Color(0xff900C3F),fixedSize: Size(100, 50)),
                           onPressed:(){
                         Navigator.pushReplacement(context,
                             MaterialPageRoute(builder: (context)=>Firstpage(names: widget.names,)));
                       },
                           child: Text("Name")),
             ],
                   ),
                 ),
           ]),
         ),
       ),
     );
   }
   showalertdialog(BuildContext context, String confirm){
     showDialog(context: context, builder: (context)
     {
       return AlertDialog(title: Text(confirm),
         actions: [
           TextButton(onPressed: () {}, child: Text("Ok")),
           TextButton(onPressed: () {}, child: Text("Cancel")),
         ],
       );
     });
   }
 }
