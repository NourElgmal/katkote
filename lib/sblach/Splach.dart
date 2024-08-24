import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:katkote/page/page1.dart';
import 'package:katkote/start%20&%20login/start.dart';
class Splach extends StatefulWidget{
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
    double x=-200.0,y=0.0;
     an()async{
      await Duration(seconds: 1);
      setState(() {
        x=MediaQuery.sizeOf(context).width*.3;
        y=MediaQuery.sizeOf(context).height*.4;
      });
    }
  @override
  void initState() {
  FirebaseAuth.instance
  .idTokenChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    an();
    return Scaffold(
      body: AnimatedContainer(duration: Duration(seconds: 1),
      curve: Curves.bounceOut,
      transform: Matrix4.translationValues(x, y, .1),
      child: Image.asset("assates/ico.jpeg",cacheHeight: 200,cacheWidth: 200,),
      onEnd: () {
        if(FirebaseAuth.instance.currentUser==null){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => start(),),
         (Route<dynamic>route) => false);
         }else{
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Page1(),),
         (Route<dynamic>route) => false);
         }
      },
      
      )
    );
  }
}