import 'package:flutter/material.dart';

class ex {
  ext(BuildContext context,List wans,String t,int y){
   //y++;
     if (y<=wans.length-1) {
      y++;
      }else{
       y=0;
      }
      print(y);
        showDialog(context: context, builder:(context) {          
                return AlertDialog(
                   title: Center(
                   child: Text(t,
                                style: TextStyle(fontSize: 25,
                                fontWeight: FontWeight.w700,fontFamily: AutofillHints.language),),
                              ),
                              content: Container(
                               width: MediaQuery.sizeOf(context).width*.6,
                               height: MediaQuery.sizeOf(context).width*.2,
                                child: Text(wans[y],style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 18),)
                                
                              ),
                              actions: [  
                                Center(
                                  child: MaterialButton(
                                        color: Colors.amber,
                                        onPressed: (){Navigator.of(context).pop();},
                                        child: Text("حسنا",style: TextStyle(color: Colors.white),),),
                                )
                              ],
                            );
                          },);
  }
 
}