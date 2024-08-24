import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:katkote/bloc/cub.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:katkote/page/page1.dart';
import 'package:katkote/start%20&%20login/sinup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController emil;
  late TextEditingController pass;
 @override
  void initState() {
   emil=TextEditingController();
     pass= TextEditingController();
    super.initState();
  }
     void save() async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
   prefs.setString("emil",emil.text);
    print("session saved");
  }
  @override
  Widget build(BuildContext context) {
  cub c=cub.get(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 35, 39, 1),
      body: Center(
        child: Column(
          children: [
           // Spacer(),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Text(S.of(context).Hii,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,fontSize: 24, ),
                textAlign: TextAlign.center,
                ),
                ),
                Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(S.of(context).Welcome,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,fontSize: 16, fontFamily:"Oxygen"),
                textAlign: TextAlign.center,
                ),
                ),
                Spacer(flex: 2,),
                Container(
                  width: 355,height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 60, 65, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:S.of(context).EnterUsername,
                      hintStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                    controller: emil,
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 355,height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 60, 65, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                 child: TextField(
                    decoration: InputDecoration( 
                      hintText: S.of(context).password,
                      hintStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                      
                    ),
                    controller: pass,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 25,top: 10),
                  width: MediaQuery.sizeOf(context).width,
                  alignment: Alignment.centerRight,
                  child: Text(S.of(context).RecoverPassword,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14,),),
                ),
                InkWell(
                  onTap: () async{
                  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emil.text,
    password: pass.text
  );
  save();
  c.setname(emil.text);
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Page1(),), (Route<dynamic>route) => false);
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    alignment: Alignment.center,
                    width: 355,
                    height: 56,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(200, 71, 244, 1),
                        Color.fromRGBO(110, 84, 247, 1),
                      ]
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(S.of(context).Signin,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                  ),
                ),
                Spacer(flex: 1,),
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(S.of(context).Donthave,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                     ),),
                     TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sinup(),));
                     }, child: Text(S.of(context).SignUp,style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                     ),),)
                   ],
                 ),
                 Spacer(),
              ],
        ),
      ),

    );
  }
}
