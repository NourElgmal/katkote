import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:provider/provider.dart';

class Sbha extends StatefulWidget{
  @override
  State<Sbha> createState() => _SbhaState();
}

class _SbhaState extends State<Sbha> {
late TextEditingController z;
@override
  void initState() {
    z=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    List azkar=[
    S.of(context).az1,
    S.of(context).az2,
    S.of(context).az3,
    S.of(context).az4,
    S.of(context).az5,
    S.of(context).az6,
    S.of(context).az7
  ];
    return ChangeNotifierProvider(create: (context) => promodel(),
    builder: (context, child) {
      return Scaffold(
        appBar: AppBar(
        title: Text(S.of(context).sphatitle),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.sizeOf(context).height*.2,
              width: MediaQuery.sizeOf(context).width*.9,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 226, 225, 225),
                border: Border.all(width: 2,color: Colors.black),
                borderRadius: BorderRadius.circular(14)
                ),

                child: Container(
                  height: 60,
                  child: PageView.builder(
                    itemCount: azkar.length,
                    itemBuilder: (context, index) {
                    return Text("${azkar[index]}",             
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700
                    ),
                    );
                  },
                  ),
                ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.sizeOf(context).height*.2,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))
              ),
              
            ),
            
            Stack(
              children: [
                Container(
                  color: Colors.amber,
                 // height: 360,
                  child: Image.asset("assates/sbha.jpeg",)),
                  Positioned(
                    top: 50,
                    right: 80,
                    child: Container(
                      child: Selector<promodel,int>(
                        selector: (p0, p1) => p1.i1,
                        builder: (context, value, child) {
                        return Text("$value",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),);
                      }, 
                      ),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    right: 30,
                    child: Container(
                    width: 20,
                    child: Consumer<promodel>(
                      builder: (context, value, child) {
                      return MaterialButton(onPressed: (){
                        value.res();
                      },
                      color: Colors.transparent,
                      elevation: 0,
                      );
                      }
                    ),
                  )),
                  Positioned(
                    top: 130,
                    right: 60,
                    child: Container(
                    //width: 20,
                    height: 70,
                    child: Consumer<promodel>(
                      builder: (context, value, child) {
                      return MaterialButton(onPressed: (){
                        value.inc();
                      },
                      color: Colors.transparent,
                      elevation: 0,
                      );
                      }
                    ),
                  )),
              ],
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Spacer(flex: 4,),
               Container(
                  height: MediaQuery.sizeOf(context).height*.2,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                ),
                Spacer(),
                MaterialButton(
                    color: Colors.amber,
                    onPressed: (){
                      showDialog(context: context,
                      builder:(context) {
                        return AlertDialog(
                          title: Text("اضافة زكر",textAlign:TextAlign.center,),
                          content: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 249, 237, 237),
                            ),
                            child: TextField(
                              controller: z,
                              decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "ادخل الذكر"
                                ),
                                keyboardType: TextInputType.name,
                            ),
                          ),
                          actions: [
                            MaterialButton(
                              color: Colors.amber,
                              onPressed: (){
                              azkar.add(z.text);
                              setState(() {});
                              Navigator.of(context).pop();
                            },
                            child: Text("اضافه"),
                            )
                          ],
                        );
                      },
                       );
                    },
                    child: Text("add zekr"),
                    ),
                    Spacer(), 
             ],
           ),
           Spacer(),
          ],
        ),
      ),
      );
    },
    );
  }
}
class promodel extends ChangeNotifier{
int i=0;
get i1 =>i;
inc(){
  i++;
  notifyListeners();
}
res(){
  i=0;
  notifyListeners();
}
}