import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Mham extends StatefulWidget {
  @override
  State<Mham> createState() => _MhamState();
}

class _MhamState extends State<Mham> {
  late TextEditingController mh;
  late TextEditingController not;
  late List showmh;
  late List shownot;

  @override
  void initState() {
    super.initState();
    mh = TextEditingController();
    not = TextEditingController();
    showmh = [];
    shownot = [];
    load();
  }

  addto(String s1, String s2) {
    setState(() {
      showmh.add(s1);
      shownot.add(s2);
      save();
    });
  }
  @override
  void dispose() {
    mh.dispose();
    not.dispose();
    super.dispose();
  }
  
  void save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      String jsonList = jsonEncode(showmh);
      String jsonList2 = jsonEncode(shownot);
      String? email = prefs.getString('emil');
      if (email != null) {
        prefs.setString(email, jsonList); // Use email as key
        prefs.setString('listnot', jsonList2);
        print("session saved");
      } else {
        print("Error: Email is null");
      }
    } catch (e) {
      print("Error saving data: $e");
    }
  }

  void load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      String? email = prefs.getString('emil');
      if (email != null) {
        String? jsonList = prefs.getString(email); // Use email as key
        String? jsonList2 = prefs.getString('listnot');
        if (jsonList != null) showmh = jsonDecode(jsonList);
        if (jsonList2 != null) shownot = jsonDecode(jsonList2).cast<String>();
        setState(() {
          
        });
      } else {
        print("Error: Email is null");
      }
    } catch (e) {
      print("Error loading data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).titalmham),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Center(
                  child: Text(
                    "اضف مهام جديده",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                content: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * .5,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: mh,
                          decoration: InputDecoration(
                            hintText: "اضافة المهمه  ",
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * .5,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: not,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "اضافة ملاحظات  ",
                            helperStyle: TextStyle(color: Colors.grey),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: MediaQuery.of(context).size.width * .4,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          addto(mh.text.trim(), not.text.trim());
                          mh.clear();
                          not.clear();
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "اضافة مهمه",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .7,
          child: ListView.builder(
            itemCount: showmh.length,
            itemBuilder: (context, index) {
              if (index < showmh.length && index < shownot.length) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.amber, width: 3),
                  ),
                  child: ListTile(
                    title: Text(showmh[index]),
                    subtitle: Text(shownot[index]),
                    leading: IconButton(
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("لقد اكملت مهمتك "),
                              content: Container(
                                alignment: Alignment.center,
                                height: MediaQuery.sizeOf(context).height*.3,
                                child: Column(
                                  children: [
                                    Image.asset("assates/finsh.jpeg"),
                                    Text("عاش يا اشطر كتكوت",style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700
                                      ),
                                      ),
                                  ],
                                ),
                              ),
                              actions: [
                                Center(
                                  child: MaterialButton(
                                    color: Colors.amber,
                                    onPressed: () {
                                      setState(() {
                                        showmh.removeAt(index);
                                        shownot.removeAt(index);
                                        save();
                                      });
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(S.of(context).Okay),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.check),
                    ),
                    trailing: Container(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  mh.text = showmh[index];
                                  not.text = shownot[index];
                                  return AlertDialog(
                                    title: Center(
                                      child: Text(
                                        "تعديل مهمه",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    content: Container(
                                      width: MediaQuery.of(context).size.width *
                                          .6,
                                      height: MediaQuery.of(context).size.height *
                                          .2,
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .5,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey, width: 3),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextFormField(
                                              controller: mh,
                                              decoration: InputDecoration(
                                                hintText: "اضافة المهمه  ",
                                                border: InputBorder.none,
                                              ),
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .5,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey, width: 3),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextFormField(
                                              controller: not,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "اضافة ملاحظات  ",
                                                helperStyle:
                                                    TextStyle(color: Colors.grey),
                                              ),
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      Center(
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 60,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                showmh[index] = mh.text.trim();
                                                shownot[index] = not.text.trim();
                                                save();
                                              });
                                              mh.clear();
                                              not.clear();
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "تعديل",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.note, color: Colors.amber),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                showmh.removeAt(index);
                                shownot.removeAt(index);
                                save();
                              });
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            },
          
          ),
        ),
      ),
    );
  }
}
