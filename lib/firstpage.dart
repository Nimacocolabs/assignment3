import 'package:flutter/material.dart';
import 'package:assignment3/homepage.dart';

class Firstpage extends StatefulWidget {
  var names;
  Firstpage({this.names});

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff900C3F),
        title: Center(child: Text("STUDENT NAME DETAILS")),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Center(child: Text("STUDENT",style: TextStyle(fontSize: 30),)),
        SizedBox(height: 20,),
        Expanded(
                child: ListView.builder(
            itemCount: widget.names.length,
            itemBuilder: (BuildContext context,int index)
            {
                return Card(
                  color: Color(0xff900C3F),
                  child: ListTile(
                    title: Text(widget.names[index],style: TextStyle(color: Colors.white)),
                    onTap: (){
                      showsanckbar(context, widget.names[index]);
                    },),
                );},),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0xff900C3F),fixedSize: Size(100, 50)),
                    onPressed:(){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Homepage()));
                },
                    child: Text("Back")),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void showsanckbar(BuildContext context,String msg)
  {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg,style: TextStyle(fontSize: 15),),
          backgroundColor: Color(0xff900C3F),duration: Duration(seconds: 1),)
    );
  }
}

