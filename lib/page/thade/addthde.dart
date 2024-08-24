import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katkote/bloc/cub.dart';
import 'package:katkote/bloc/state.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:katkote/page/thade/cardevery.dart';
class Addthde extends StatefulWidget{
  @override
  State<Addthde> createState() => _AddthdeState();
}

class _AddthdeState extends State<Addthde> {
  late TextEditingController thde;
  @override
  void initState() {
    thde=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cub(instate()),
      child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(S.of(context).titleevery),
          centerTitle: true,
        ),
        body: BlocBuilder<cub, state>(
          builder: (context, state) {
            cub c3 = cub.get(context);
            return Center(
          child: Column(
            children: [
              Spacer(),
              Text("مستوي التحدي",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      activeColor: Colors.amber,
                      title: Text("سهل"),
                      value: "ease",
                       groupValue: c3.r,
                        onChanged: (value) => c3.chingr(s: "ease"),
                        )
                  ),
                   Expanded(
                    child: RadioListTile(
                      activeColor: Colors.amber,
                      title: Text("صعب"),
                      value: "heard",
                       groupValue: c3.r,
                        onChanged: (value) => c3.chingr(s: "heard"),
                        )
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: MediaQuery.sizeOf(context).width*.15,
                width: MediaQuery.sizeOf(context).width*.8,
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Color.fromARGB(255, 179, 177, 177)),
                  borderRadius: BorderRadius.circular(10),               
                ),
                child: TextField(
                  controller: thde,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "  ادخل التحدي ...",
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                 height: MediaQuery.sizeOf(context).width*.15,
                width: MediaQuery.sizeOf(context).width*.35,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: TextButton(onPressed: (){
                  if(thde.text!=""){
                 // c3.addkl(k: thde.text);
                  //c3.addarr("assates/kfl.jpg");
                  //c3.addtask(cardevery().caevery(cub.arry[cub.arry.length-1]));
                  //c3.ickcon();
                  c3.addarr("assates/kfl.jpg", thde.text);
                  }
                Navigator.pop(context);
                },
                
                child: Text("اضافه",style: TextStyle(color: Colors.white,fontSize: 24,),),),
              ),
              Spacer(flex: 3,),
            ],
          ),
        );
          }
    ),
    )
    );
  
  }
}