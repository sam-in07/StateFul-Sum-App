

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
  Map<String,double> FromValue = {"Num1":0,"Num2":0 };
  double sum = 0 ;
  @override
  Widget build(BuildContext context) {
    MyInputOnchange(Inputkey, Inputvalue){
      setState(() {
        FromValue.update(Inputkey, (value)=> double.parse(Inputvalue));
      });
    }


    addAllNum(){
    setState(() { ///value change hocche update oijnno eta usee kora
      sum = FromValue['Num1']!+ FromValue['Num2']!; //null na hole summation hoijabe
    });

  }


      return Scaffold(
        appBar: AppBar(
          title: Text("add"),
        ),
        body: Padding(
            padding: EdgeInsets.all(40),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text(sum.toString(), style: HeadTextStyle(),),

               SizedBox(height: 20,),

               TextFormField(

                 onChanged: (value){
                   MyInputOnchange("Num1" , value);
                 },

                 decoration: AppInsputstyle("First number "),),
               SizedBox(height: 20,),
               TextFormField(
                 onChanged: (value){
                   MyInputOnchange("Num2" , value);
                 },
                 decoration: AppInsputstyle("Second Number "),),
               SizedBox(height: 20,), // etata tmr akta box to arekta box distance ta
               Container(
                 width: double.infinity, // eta lomba hoise akhon
                 child: ElevatedButton(

                     style: Appbuttonstyle(),
                     child: Text("Add"),
                     onPressed: () {
                       addAllNum();
                     },
                 ),
               )
             ],
          ),
        ),
      );

  }

}