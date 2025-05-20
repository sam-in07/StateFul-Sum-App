

import 'package:counterapp/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp()) ;
}

class Myapp extends StatelessWidget {
  //my app  dey je homepage  thakbe take set kore  nibo

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return MaterialApp(
      title: "Sum APP",
      home: MyHomepage(),  // MyHomepage screen ta  route
    );
  }

}


class MyHomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return MyHomepageUI ();
  }

}

class MyHomepageUI  extends State<MyHomepage>{
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text("add"),
        ),
        body: Padding(
            padding: EdgeInsets.all(40),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text("Sum = 0", style: HeadTextStyle(),),
               SizedBox(height: 20,),
               TextFormField(decoration: AppInsputstyle("First number "),),
               SizedBox(height: 20,),
               TextFormField(decoration: AppInsputstyle("Second Number "),),
               SizedBox(height: 20,), // etata tmr akta box to arekta box distance ta
               Container(
                 width: double.infinity, // eta lomba hoise akhon
                 child: ElevatedButton(

                     style: Appbuttonstyle(),
                     child: Text("Add"),
                     onPressed: () {

                     },
                 ),
               )
             ],
          ),
        ),
      );

  }

}