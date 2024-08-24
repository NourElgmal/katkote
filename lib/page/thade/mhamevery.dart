import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katkote/bloc/cub.dart';
import 'package:katkote/bloc/state.dart';
import 'package:katkote/generated/l10n.dart';
import 'package:katkote/page/thade/addthde.dart';
import 'package:katkote/page/thade/cardevery.dart';
import 'package:katkote/page/thade/solvetahde.dart';

class Mhamevery extends StatefulWidget {
  @override
  State<Mhamevery> createState() => _MhameveryState();
}

class _MhameveryState extends State<Mhamevery> {
  late TextEditingController thde;
  @override
  void initState() {
    thde=TextEditingController();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    var evereday = cardevery();
    var sol=Solvethade();
    /*
   List klam = [
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
List klam2 = [
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
*/
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
            cub c2 = cub.get(context);
           
            return Column(
              children: [
                Spacer(),
                 Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {
                        c2.eresev();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.width * 0.1,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "بدء من جديد",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  Addthde(),));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.width * 0.1,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "اضافة تحدي",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: double.infinity,
                  child: ListView.builder(
  itemCount: (cub.conter / 3).ceil(),
  itemBuilder: (context, rowIndex) {
    return Row(
      children: List.generate(3, (columnIndex) {
        final index = rowIndex * 3 + columnIndex;
        if (index >= cub.conter) return SizedBox();
       // if (cub.conter!=10) {
        c2.incindexam();
        c2.changeimageevery();
        c2.addtask(evereday.caevery(cub.arry[index]));
        //}
        return Expanded(
          child: InkWell(
            onTap: () {
              if (cub.arry[index]!="assates/kfl.jpg") {
                sol.gave(cub.klam[index], cub.klam2[index], index); 
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Solvethade(),));
            
              }
              },
            child:cub.task[index] ,//evereday.caevery(cub.arry[index]),
          ),
        );
      }),
    );
  },
)

                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
