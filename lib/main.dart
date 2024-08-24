import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katkote/bloc/cub.dart';
import 'package:katkote/bloc/state.dart';
import 'package:katkote/firebase_options.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:katkote/sblach/Splach.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:intl/intl.dart';
void main() async{
  try{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );}catch(e){
    print("error");
  }
  //String a="en";
  runApp(
    BlocProvider(create: (context) => cub(instate()),
    child: BlocConsumer<cub,state>(listener: (context, state) {}
    ,builder:(context, state) {
     cub c=cub.get(context);
      return 
    MaterialApp(
      debugShowCheckedModeBanner: false,
       locale:Locale(c.s1) ,
       localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: 'Flutter Demo',
            home:sc1(),
   );
     },
     ),
    )
  );
  
}
class sc1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Splach();
  }

}


