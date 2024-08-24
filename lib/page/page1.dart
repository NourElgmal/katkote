import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:katkote/bloc/cub.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:katkote/page/card.dart';
import 'package:katkote/page/mham.dart';
import 'package:katkote/page/thade/mhamevery.dart';
import 'package:katkote/page/sbha.dart';
import 'package:katkote/start%20&%20login/start.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int y = 0, y2 = 0, g = 0;
   ext(BuildContext context,List wans,String t){
   //y++;
     if (y<wans.length-1) {
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
                                        child: Text(S.of(context).ok,style: TextStyle(color: Colors.white),),),
                                )
                              ],
                            );
                          },);
  }
  List iml = [
    "assates/imth2.jpeg",
    "assates/imth3.jpeg",
    "assates/imth4.jpeg",
    "assates/imth5.jpeg",
    "assates/imth6.jpeg",
    "assates/imth7.jpeg",
    "assates/imth1.jpeg"
  ];
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  String name = "", email = "", na = "";
  
  save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString("emil")!;
    await Future.delayed(const Duration(milliseconds: 100), () {
      na = (prefs.getString("name") == null) ? "" : prefs.getString("name")!;
      g = 1;
      name = na;
      setState(() {});
    });
    print(email);
    print(name);
    print("session saved");
  }

  @override
  void initState() {
    save();
    print("1111111111111111111111111111111111111111111");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    cub c = cub.get(context);
    List masghart = [
      S.of(context).a,
      S.of(context).b,
      S.of(context).c,
      S.of(context).d,
      S.of(context).e,
      S.of(context).f,
      S.of(context).g
    ];
    List wans = [
      S.of(context).h,
      S.of(context).i,
      S.of(context).j
    ];
    List orang = [
      S.of(context).k,
      S.of(context).l,
      S.of(context).m,
      S.of(context).n,
      S.of(context).o,
      S.of(context).p,
      S.of(context).q
    ];
    print(
        "2222222222222222222222222222222222222222222222222222");
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(S.of(context).apptitle),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            scaffoldkey.currentState!.openDrawer();
          },
          child: CircleAvatar(
              backgroundImage: AssetImage("assates/start.jpeg")),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Spacer(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assates/start.jpeg"),
              ),
            ),
            Spacer(),
            Text(
              S.of(context).td1,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Text(
              S.of(context).td2,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Text(
              S.of(context).td3,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Spacer(),
            SwitchListTile(
              title: Text(S.of(context).chlan),
              activeColor: Colors.yellow,
              activeTrackColor: Colors.green,
              value: c.chabgelan2,
              onChanged: (value) {
                c.change();
                c.changepart2();
              },
            ),
            InkWell(
              onTap: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.warning,
                  animType: AnimType.rightSlide,
                  title: S.of(context).wor,
                  desc: S.of(context).worcon + name,
                  btnCancelOnPress: () {
                    Navigator.of(context).pop();
                  },
                  btnOkOnPress: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => start()),
                      (Route<dynamic> route) => false,
                    );
                  },
                )..show();
              },
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  S.of(context).logout,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: Future.delayed(Duration(milliseconds: 100), () {
            if (g == 1) {
              QuickAlert.show(
                context: context,
                type: QuickAlertType.info,
                barrierDismissible: true,
                text: S.of(context).alertContent + name,
                title: S.of(context).alertTitle,
                confirmBtnText: S.of(context).Okay,
                confirmBtnColor: Colors.amber,
              );
            }
          }),
          builder: (ctx, snapshot) {
            card car=card();
            
            return Column(
              children: [
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Future.delayed(Duration(seconds: 2), () {
                          Navigator.of(context).pop();
                        });
                        if (y >= 6) {
                          y = 0;
                        } else {
                          y++;
                        }
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                width: MediaQuery.of(context).size.width * .6,
                                height: MediaQuery.of(context).size.width * .6,
                                child: Image.asset(
                                  iml[y],
                                  fit: BoxFit.fill,
                                ),
                              ),
                              actions: [
                                Center(
                                  child: MaterialButton(
                                    color: Colors.amber,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      S.of(context).ok,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        );
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                width: MediaQuery.of(context).size.width * .6,
                                height: MediaQuery.of(context).size.width * .8,
                                child: Image.asset(
                                  "assates/giphy-preview.gif",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: car.ca("assates/1.jpg", S.of(context).hapybick),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        ext(context, masghart, S.of(context).dayms);
                      },
                      child: car.ca("assates/2.jpg", S.of(context).masage),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mhamevery(),));
                      },
                      child: car.ca("assates/3.jpg", S.of(context).evereday),
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: car.ca("assates/4.jpg", S.of(context).note),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: car.ca("assates/5.jpg", S.of(context).lave),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: car.ca("assates/6.jpg", S.of(context).lamp),
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sbha(),));
                      },
                      child: car.ca("assates/7.jpg", S.of(context).hand),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Mham(),));
                      },
                      child: car.ca("assates/8.jpg", S.of(context).maham),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: car.ca("assates/9.jpg", S.of(context).prin),
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {
                        ext(context, wans, S.of(context).romantk);
                      },
                      child: car.ca("assates/10.jpg", S.of(context).notbook),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        ext(context, orang, S.of(context).sure);
                      },
                      child: car.ca("assates/11.jpg", S.of(context).orang),
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(flex: 3),
              ],
            );
          },
        ),
      ),
    );
  }
}
