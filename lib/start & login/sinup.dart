import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:katkote/bloc/cub.dart';

import 'package:katkote/generated/l10n.dart';
import 'package:katkote/start%20&%20login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sinup extends StatefulWidget {
  @override
  State<Sinup> createState() => _SinupState();
}

class _SinupState extends State<Sinup> {
  late TextEditingController name;
  late TextEditingController password;
  late TextEditingController email;

  @override
  void initState() {
    name = TextEditingController();
    password = TextEditingController();
    email = TextEditingController();
    super.initState();
  }

  final GlobalKey<FormState> _fromkey = GlobalKey<FormState>();
  void s() {
    final va = _fromkey.currentState!.validate();
    if (va) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
    }
  }

void save() async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
   prefs.setString(email.text, name.text);
    prefs.setString("name", name.text);
    print("session saved");
  }
  
  @override
  Widget build(BuildContext context) {
    cub c=cub.get(context);
    return Scaffold(
      body: Form(
        key: _fromkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                S.of(context).CreateNewAccount,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0B8FAC),
                ),
              ),
              Spacer(flex: 2),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    SizedBox(height: 30,),
                    Text(
                      S.of(context).FullName,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: S.of(context).EnterYourFullName,
                          hintStyle: TextStyle(color: Color(0xff858585), fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        keyboardType: TextInputType.name,
                       validator: (value) {
                          if (value!.isEmpty) {
                            return S.of(context).checkfullname;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).Email,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: S.of(context).EnterYourEmail,
                          hintStyle: TextStyle(color: Color(0xff858585), fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                          if (value!.isEmpty || !value.contains('@gmail.com')) {
                            return S.of(context).checkyouremail;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).password,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: password,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: S.of(context).EnterYourPassword,
                          hintStyle: TextStyle(color: Color(0xff858585), fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                       validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return S.of(context).checkyourpassword;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xff0B8FAC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () async{
                    try {
                      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email.text,
                        password: password.text,
                        );
                        FirebaseAuth.instance.currentUser!.sendEmailVerification();
                        save();
                        s();
                        c.setname(name.text);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print('The account already exists for that email.');
                               }
                               } catch (e) {
                                print(e);
                                }
                  },
                  child: Text(
                    S.of(context).SignUp,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ),
              ),
              Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).anaccount),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  }, child: Text(S.of(context).login))
                ],
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
  
}