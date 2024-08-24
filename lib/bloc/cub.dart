
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katkote/bloc/state.dart';
import 'package:katkote/page/thade/cardevery.dart';

class cub extends Cubit<state>{
  cub(super.initialState);
  static cub get(BuildContext context){
    return BlocProvider.of(context);
  }
  static List<String> arry=[];
  get arr =>arry;
  static List klam = [
  "التذكر دائما أن الغد أفضل، ولذلك على الشخص أن يبدأ يومه وهو يفكر في قرارة نفسه أن هذا اليوم أفضل من اليوم الذي سبقه.",
  "على الفرد أن يعلم أن جميع الأسر تعاني من وجود الخلافات والمشاكل، ولذلك عليه أن يعطي نفسه الوقت الكافي مع عائلته، كالجلوس على طاولة الطعام مع العائلة مثلاً.",
  "الانضمام إلى المجموعات التي تقدم المساعدات الذاتية، وتطبق برامج مختلفة، وتعطي الدعم العاطفي للشخص، وتساعده على إعادة توجيه حياته.",
  "قراءة الكتب لما لها من أثرٍ مفيد في بعث الطاقة الإيجابية في المرء.",
  "العمل مع الأشخاص المفضلين الذين يبثون الطاقة الإيجابية في الأفراد.",
  "اتخاذ قرار التغيير من الداخل مع القناعة التامة به.",
  "تقديم المساعدة لشخص محتاج، فمن شأن ذلك أن يعطي العقل فرصة للاسترخاء، كما يعطيه الوقت الكافي لإيجاد الحلول للمشكلات المختلفة، ويعطيه أيضاً شعوراً بأنه أفضل مما كان عليه.",
  "تغيير الطريقة في التعامل مع الأمور، والمحاولة للتغيير ما أمكن.",
  "التخلص من الأفكار السلبية التي تشغل التفكير، والتي كلما زاد التفكير بها تصبح واقعاً، وتملأ العقل بالأفكار الإيجابية.",
  "احترام الجسد بمعالجته، ويكون ذلك باتباع الأنظمة الغذائية الصحية، وهذا من شأنه أن يطهّر العقل أيضاً."
];
static List klam2 = [
  "اتخاذ القرارات المهمة في الحياة دون التأثر بآراء الآخرين أو مصالحهم، فعلى الشخص أن يتعامل مع حياته على أنه الوحيد المسؤول عنها، والقادر على تغييرها.",
  "النظر إلى أن كل يوم جديد هو بمثابة فرصةٍ جديدة.",
  "الاستمتاع بالطبيعية، فقد أثبتت الدراسات أن الهواء الطلق يخفف من التوتر، كما ويحسّن من مستوى الذاكرة ويعطي شعوراً بالتجديد.",
  "أخذ استراحات ذهنية من وقتٍ لآخر، وخاصة عندما تتراكم الأعمال والمشكلات.",
  "الضحك، لما له من تأثيرٍ في تعزيز المناعة، كما أنّ الضحك يُعدّل المزاج ويقلل من آثار الضغوطات التي يواجهها الفرد في الحياة.",
  "التنفس بعمقٍ، ويكون ذلك بعمل تمارين التنفس، التي من شأنها طرد السموم من الجسم، وإدخال الهواء النقي للدماغ.",
  "التحدث مع النفس بصوتٍ مرتفع عن الأمور الإيجابية، وأن الأمور سوف تتحسن وتسير نحو الأفضل.",
  "التحدث مع أصدقاء إيجابيين، فعلى الشخص أن يحيط نفسه بأشخاص ينشرون الطاقة الإيجابية، يمكن عمل عصفٍ ذهني معهم للوصول إلى أفكارٍ جديدة أو طرح حلولٍ لمشكلاتٍ معينة.",
  "ممارسة التمارين الرياضية مثل المشي، فمن شأن التمارين الرياضية أن تحرر الناقلات الكيميائية في الدماغ، وبالتالي التخفيف من المشاعر السلبية.",
  "أخذ قسطٍ كافٍ من النوم، حيث أثبتت الدراسات أنّ الأشخاص الذين لا ينامون بشكلٍ كافٍ يشعرون بالحزن والغضب.",
  "مكافأة النفس من وقتٍ لآخر وذلك بالخروج للترفيه مثلاً، وهذا يخفف من العبء الحاصل عليها، والرجوع إلى الحياة والعمل بنفسية جديدة وبطاقةٍ إيجابية."
];
  String name="";
  String s1="ar";
  String language="english";
  bool chabgelan2=false;
  int i=0;
  int i2=0;
  String imagelink="assates/start.jpeg";
  int indexfale=0;
  int indexam=0;
  int corct=0;
  File? file;
  static int conter=10;
  String r="";
  int rr=0;
  static List<Widget> task=[];
  static List kl1=[];
  static List kl2=[];
  /*
   void save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      String jsonList = jsonEncode(klam);
      String jsonList2 = jsonEncode(klam2);
      String jsonList3 = jsonEncode(arry);
      String jsonList4 = jsonEncode(task);
      int con=conter;
      String? email = prefs.getString('emil');
      if (email != null) {
        prefs.setString("${"klam"+email}", jsonList); // Use email as key
        prefs.setString("${"klam2"+email}", jsonList2);
        prefs.setString("${"arry"+email}", jsonList3); // Use email as key
        prefs.setString("${"task"+email}", jsonList4);
        prefs.setInt("${"con"+email}",con);
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
        String? jsonList = prefs.getString("${"klam"+email}"); // Use email as key
        String? jsonList2 = prefs.getString("${"klam2"+email}");
        String? jsonList3 = prefs.getString("${"arry"+email}"); // Use email as key
        String? jsonList4 = prefs.getString("${"task"+email}");
        int? con=prefs.getInt("${"con"+email}");
        if (jsonList != null) klam = jsonDecode(jsonList);
        if (jsonList2 != null) klam2 = jsonDecode(jsonList2).cast<String>();
        if (jsonList3 != null) arry= jsonDecode(jsonList3);
        if (jsonList4 != null) task = jsonDecode(jsonList4);
        if (con != null) conter = con;
      } else {
        print("Error: Email is null");
      }
    } catch (e) {
      print("Error loading data: $e");
    }
  }
  */
  inki(){
    i++;
    emit(ink());
    return i;

  }
   resi(){
    i=0;
    emit(res());
    return i;
  }
  d(){
    i2++;
    emit(n());
    return i2;
  }
  setname(String s){
    name =s;
    emit(setn());
    return name;
  }
  changepart2(){
    chabgelan2=!chabgelan2;
    emit(chpart2());
    return chabgelan2;
  }
  change(){
    if (s1=="ar") {
      s1="en";
    }else{
      s1="ar";
    }
    emit(ch1());
    return s1;
  }
  Change2(){
    language=(s1=="ar")?" English":"Arabic";
    emit(ch2());
    return language;
  }
  addfile(File x){
    file=x;
    emit(addimage());
    return file;
  }
  setindexfale(int ind){
    indexfale=ind;
    emit(incindxfale());
    return indexfale;
  }
  changeimageevery(){
    if(indexfale==0){
      imagelink="assates/start.jpeg";
    }else if(corct==1){
        imagelink="assates/complet.jpg";
    }else{
       imagelink="assates/kfl.jpg";
    }
     
    emit(changimg());
    arry.add(imagelink);
    indexfale=1;
    /////////////////////////////////////////
   
    return arry;
  }
  incindexam(){
    indexam++;
    emit(incthade());
    return indexam;
  }
  reatindexam(){
    indexam=0;
    emit(restthade());
    return indexam;
  }
  addcor(int v) {
  
  arry[v] = "assates/complet.jpg";
  task[v]=cardevery().caevery(cub.arry[v]);
  if (v + 1 < arry.length) { 
    arry[v + 1] = "assates/start.jpeg";
    task[v+1]=cardevery().caevery(cub.arry[v+1]);
  }
  
  emit(incco());
  return arry;
}
ickcon(){
  conter++;

  emit(kres());
  return conter;
}
dekcon(){
  conter--;
   
  emit(eres());
  return conter;
}
eresev(){
  arry=["assates/start.jpeg"];
  task=[];
  conter=10;
  klam = [
  "التذكر دائما أن الغد أفضل، ولذلك على الشخص أن يبدأ يومه وهو يفكر في قرارة نفسه أن هذا اليوم أفضل من اليوم الذي سبقه.",
  "على الفرد أن يعلم أن جميع الأسر تعاني من وجود الخلافات والمشاكل، ولذلك عليه أن يعطي نفسه الوقت الكافي مع عائلته، كالجلوس على طاولة الطعام مع العائلة مثلاً.",
  "الانضمام إلى المجموعات التي تقدم المساعدات الذاتية، وتطبق برامج مختلفة، وتعطي الدعم العاطفي للشخص، وتساعده على إعادة توجيه حياته.",
  "قراءة الكتب لما لها من أثرٍ مفيد في بعث الطاقة الإيجابية في المرء.",
  "العمل مع الأشخاص المفضلين الذين يبثون الطاقة الإيجابية في الأفراد.",
  "اتخاذ قرار التغيير من الداخل مع القناعة التامة به.",
  "تقديم المساعدة لشخص محتاج، فمن شأن ذلك أن يعطي العقل فرصة للاسترخاء، كما يعطيه الوقت الكافي لإيجاد الحلول للمشكلات المختلفة، ويعطيه أيضاً شعوراً بأنه أفضل مما كان عليه.",
  "تغيير الطريقة في التعامل مع الأمور، والمحاولة للتغيير ما أمكن.",
  "التخلص من الأفكار السلبية التي تشغل التفكير، والتي كلما زاد التفكير بها تصبح واقعاً، وتملأ العقل بالأفكار الإيجابية.",
  "احترام الجسد بمعالجته، ويكون ذلك باتباع الأنظمة الغذائية الصحية، وهذا من شأنه أن يطهّر العقل أيضاً."
];
  klam2 = [
  "اتخاذ القرارات المهمة في الحياة دون التأثر بآراء الآخرين أو مصالحهم، فعلى الشخص أن يتعامل مع حياته على أنه الوحيد المسؤول عنها، والقادر على تغييرها.",
  "النظر إلى أن كل يوم جديد هو بمثابة فرصةٍ جديدة.",
  "الاستمتاع بالطبيعية، فقد أثبتت الدراسات أن الهواء الطلق يخفف من التوتر، كما ويحسّن من مستوى الذاكرة ويعطي شعوراً بالتجديد.",
  "أخذ استراحات ذهنية من وقتٍ لآخر، وخاصة عندما تتراكم الأعمال والمشكلات.",
  "الضحك، لما له من تأثيرٍ في تعزيز المناعة، كما أنّ الضحك يُعدّل المزاج ويقلل من آثار الضغوطات التي يواجهها الفرد في الحياة.",
  "التنفس بعمقٍ، ويكون ذلك بعمل تمارين التنفس، التي من شأنها طرد السموم من الجسم، وإدخال الهواء النقي للدماغ.",
  "التحدث مع النفس بصوتٍ مرتفع عن الأمور الإيجابية، وأن الأمور سوف تتحسن وتسير نحو الأفضل.",
  "التحدث مع أصدقاء إيجابيين، فعلى الشخص أن يحيط نفسه بأشخاص ينشرون الطاقة الإيجابية، يمكن عمل عصفٍ ذهني معهم للوصول إلى أفكارٍ جديدة أو طرح حلولٍ لمشكلاتٍ معينة.",
  "ممارسة التمارين الرياضية مثل المشي، فمن شأن التمارين الرياضية أن تحرر الناقلات الكيميائية في الدماغ، وبالتالي التخفيف من المشاعر السلبية.",
  "أخذ قسطٍ كافٍ من النوم، حيث أثبتت الدراسات أنّ الأشخاص الذين لا ينامون بشكلٍ كافٍ يشعرون بالحزن والغضب.",
  "مكافأة النفس من وقتٍ لآخر وذلك بالخروج للترفيه مثلاً، وهذا يخفف من العبء الحاصل عليها، والرجوع إلى الحياة والعمل بنفسية جديدة وبطاقةٍ إيجابية."
];
  
  emit(eresevery());
  return arry;
}
chingr({required String s}){
  r=s;
  emit(chr());
  return r;
}
addtask(Widget w){
task.add(w);
emit(addklam2());
return task;
}
//var evereday = cardevery();
addarr(String f,String f2){
arry.add(f);
klam.add(f2);
klam[conter]=f2;
klam2.add("لا يوجد ابذل جهدك");
klam2[conter]="لا يوجد ابذل جهدك";
//addtask(evereday.caevery(cub.arry[conter]));
conter++;

emit(addar());
return arry;
}
}
