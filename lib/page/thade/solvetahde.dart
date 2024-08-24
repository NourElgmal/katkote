import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:katkote/bloc/cub.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:provider/provider.dart';

class Solvethade extends StatelessWidget{
 static String s1="",s2="";
 static int index=0;
 int x1=0,x2=0,x3=0,x4=0;
  gave(String one , String tow,int i){
    s1=one;
    s2=tow;
    index=i;
  }
  @override
  Widget build(BuildContext context) {
   return  ChangeNotifierProvider(create: (context) => solve(),
   builder: (context, child) {
     return Scaffold(
    appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(S.of(context).titleevery),
          centerTitle: true,
        ),
        body:  Column(
          children: [
            Spacer(),
            Consumer<solve>(
              builder: (context, value, child) {
              return Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        height: 200,
                        child: Column(
                          children: [
                            Spacer(),
                            Container(
                              alignment: Alignment.center,
                              color: value.x,
                              height: 40,
                              width: 40,
                              child: IconButton(onPressed: (){
                                value.chang();
                                x1=1;
                                
                              }, icon: Icon(Icons.check,size: 30,color: value.y,)),
                            ),
                            Spacer(),
                            Container(
                              color: value.x2,
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              child: IconButton(onPressed: (){
                                value.chang2();
                                x2=1;
                              }, icon: Icon(Icons.close,size: 30,color: value.y2,)),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      Spacer(flex: 5,),
                      Container(
                        width: 350,
                        child: Text(s1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      Spacer(flex: 5,),
                    ],
                  )
                ],
              );
              }
            ),
          Spacer(),
          Consumer<solve>(
          builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: 200,
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          color: value.x1,
                          height: 40,
                          width: 40,
                          child: IconButton(onPressed: (){
                            value.chang1();
                            x3=1;

                          }, icon: Icon(Icons.check,size: 30,color: value.y1,)),
                        ),
                        Spacer(),
                        Container(
                          color: value.x21,
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          child: IconButton(onPressed: (){
                            value.chang21();
                            x4=1;
                          }, icon: Icon(Icons.close,size: 30,color: value.y21,)),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Spacer(flex: 5,),
                      Container(
                        width: 350,
                        child: Text(s2,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      Spacer(flex: 5,),
                    ],
                
              ),
              
            ],
          );
          }
        ),
        Spacer(),
        MaterialButton(
          color: Colors.amber,
          onPressed: (){
            if((x1==1&&(x3==1||x4==1))||(x2==1&&(x3==1||x4==1))){
              cub c =cub.get(context);
            c.addcor(index);
            Navigator.pop(context);
            }
          },child: Text("حفظ",style: TextStyle(fontSize: 20)
          ,),
          ),
          Spacer(),
          ],
        ),
   );
   },
   );
   
   
  }
}
class solve extends ChangeNotifier{
Color x=Colors.grey;
Color x2=Colors.grey;
Color y=const Color.fromARGB(255, 72, 72, 72);
Color y2=const Color.fromARGB(255, 72, 72, 72);
chang(){
  if (x==Colors.grey) {
    x=Colors.amber;
    x2=Colors.grey;
    y=Colors.green;
    y2=const Color.fromARGB(255, 72, 72, 72);
  }else
  {
    x=Colors.grey;
    x2=Colors.red;
     y2=Colors.white;
    y=const Color.fromARGB(255, 72, 72, 72);
  }
  notifyListeners();
  return x;
}
chang2(){
  if (x2==Colors.grey) {
    x2=Colors.red;
    x=Colors.grey;
    y2=Colors.white;
    y=const Color.fromARGB(255, 72, 72, 72);
  }else
  {
    x2=Colors.grey;
    x=Colors.amber;
    y=Colors.green;
    y2=const Color.fromARGB(255, 72, 72, 72);
  }
  notifyListeners();
  return x2;
}
/////////////////////////////////////////////////
Color x1=Colors.grey;
Color x21=Colors.grey;
Color y1=const Color.fromARGB(255, 72, 72, 72);
Color y21=const Color.fromARGB(255, 72, 72, 72);
chang1(){
  if (x1==Colors.grey) {
    x1=Colors.amber;
    x21=Colors.grey;
    y1=Colors.green;
    y21=const Color.fromARGB(255, 72, 72, 72);
  }else
  {
    x1=Colors.grey;
    x21=Colors.red;
     y21=Colors.white;
    y1=const Color.fromARGB(255, 72, 72, 72);
  }
  notifyListeners();
  return x1;
}
chang21(){
  if (x21==Colors.grey) {
    x21=Colors.red;
    x1=Colors.grey;
    y21=Colors.white;
    y1=const Color.fromARGB(255, 72, 72, 72);
  }else
  {
    x21=Colors.grey;
    x1=Colors.amber;
    y1=Colors.green;
    y21=const Color.fromARGB(255, 72, 72, 72);
  }
  notifyListeners();
  return x21;
}
}