import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:high_school/departement/literary.dart';
import 'package:high_school/departement/mathematics.dart';
import 'package:high_school/departement/scientific_d.dart';


import 'login.dart';

class choose_department extends StatefulWidget {
  const choose_department({super.key});

  @override
  State<choose_department> createState() => _choose_departmentState();
}

class _choose_departmentState extends State<choose_department> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('EOL' ,style: TextStyle(color: Colors.amber,fontSize: 50,fontFamily: 'Smooch-Regular'),),
            elevation: 0,
            backgroundColor: Colors.white10,
            // actions: [

            //   IconButton(
            //     icon: Text('EOL' ,style: TextStyle(color: Colors.amber,fontSize: 20,fontFamily: 'Smooch-Regular'),),
            //     onPressed: () {
            //       // إضافة السلوك عند النقر على زر الإعدادات
            //     },
            //   ),
            // ],

          ),
          body:
          Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Choose your department',style: TextStyle(color: Colors.amber,fontSize: 25),),

                
SizedBox(height: 20,),
               Container(
              //  color: Colors.amber,
                width: 150,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
border: Border.all(color: Colors.amber,width: 7
),
               
                ),
        
        child: MaterialButton(

                onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>scientific()),
          );
        },
        child: Text("علمى علوم"),
        ),),
SizedBox(height: 20,),
             
               Container(
             
                width: 150,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
border: Border.all(color: Colors.amber,width: 7
) ),
        
        child: MaterialButton(

                onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>mathematics()),
          );
        },
        child: Text("علمى رياضة"),
        ),),

SizedBox(height: 20,),

         Container(
             
                width: 150,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
border: Border.all(color: Colors.amber,width: 7
) ),
        
        child: MaterialButton(

                onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>literary()),
          );
        },
        child: Text(" ادبى"),
        ),),   
              ],
            ),
          ),

        ));
  }

  Widget buildCustomElevatedButton(String label) {
    return SizedBox(
      height: 70,
      width: 370,
      child: IconButton(

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => login()),
          );
        },
        icon:  Container(

              height: 60,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
              border:Border.all(
                color: Colors.blue,// لون الحدود

              ),

              ),
                child:Text('           '+label,style: TextStyle(color: Colors.blue,fontSize: 25),)


      )),
    );
  }
}
