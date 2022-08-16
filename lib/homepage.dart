import 'package:assignment3/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:assignment3/firstpage.dart';

class Homepage extends StatefulWidget {
  var names=["NIMA","GOPIKA","AYANA","AMRITHA","MATHEW"];
  var courses=["BCA","MCA","BSC","MSC","BTECH","MTECH"];
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff900C3F),
        title: Center(child: Text("STUDENT DETAILS")),
      ),
        body: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,


                      primary: Color(0xff900C3F),fixedSize: Size(200, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),),
                            onPressed: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=>Firstpage(names: widget.names,)));
                          },
                              child:Text("NAME",style: TextStyle(fontSize: 20),)),

                      SizedBox(height: 50,),
                      ElevatedButton( style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Color(0xff900C3F),fixedSize: Size(200, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                          onPressed: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Secondpage(courses: widget.courses,)));
                      },
                          child:Text("COURSES",style: TextStyle(fontSize: 20),)),
                    ],
        ),
                ),
              ),
    );
  }
}
