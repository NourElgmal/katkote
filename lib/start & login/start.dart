import 'package:flutter/material.dart';
import 'package:katkote/bloc/cub.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:katkote/start%20&%20login/sinup.dart';
class start extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    cub c=cub.get(context);
   return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 1,),
          Image.asset("assates/start.jpeg"),
          Text(S.of(context).starttext1,
          style: TextStyle(color:Colors.amber,fontWeight: FontWeight.w900,fontSize: 25) ,
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: () {
             /* Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Sinup(),),
               (Route<dynamic>route) => false);*/
               Navigator.push(context, MaterialPageRoute(builder: (context) => Sinup(),));
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width*.9,
              height: 60,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(30),              
                ),
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 222, 228, 231),
                  child: ListTile(leading: Image.asset("assates/googla.jpeg",cacheHeight: 35,),
                 title: Text(S.of(context).starttext2,style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Text(S.of(context).starttext3,style: TextStyle(fontSize: 18),),
              Text(S.of(context).starttext4,style: TextStyle(color: Colors.blueAccent,fontSize: 18),)
            ],
          ),
          Spacer(),
          TextButton(onPressed: (){
            c.change();
            c.Change2();
          }, child: Text("Change the language to ${c.language}")),
          
          SizedBox(height: 30,)
        ],
      ),
    ),
   );
  }
}