import 'package:pantomim_flutter/models/guide_model.dart';
import 'package:pantomim_flutter/models/team_model.dart';
import 'package:pantomim_flutter/models/topic_model.dart';

List topicData(){
  List<Topic> topic = new List();

  topic.add(Topic('تکنولوژی',1));
  topic.add(Topic('ورزشی',2));
  topic.add(Topic('مفاخر',3));
  topic.add(Topic('سینما',4));
  topic.add(Topic('ادبیات',5));
  topic.add(Topic('بازیگر',6));
  topic.add(Topic('اشیاء',7));

  return topic;
}


List guideType(){
  List<GuideModel> guide = new List();

  guide.add(GuideModel('مسابقه عادی',"تیم ها در چند دور مختلف با \n هم رقابت می کـنند که در هر دور تنــها یک \n کلمه به عنوان سوال مطرح خواهد شد.", 1));
  guide.add(GuideModel('مسابقه سرعتی',"تیم ها در چند دور مختلف با \n هم رقابت می کـنند که در هر دور تنــها یک \n کلمه به عنوان سوال مطرح خواهد شد.", 2));
  guide.add(GuideModel('مسابقه 5 ثانیه ای',"تیم ها در چند دور مختلف با \n هم رقابت می کـنند که در هر دور تنــها یک \n کلمه به عنوان سوال مطرح خواهد شد.", 3));

  return guide;
}

List teamData(){
  List<TeamModel> team = new List();

  team.add(TeamModel('تیم اوّل', '42 امتیاز', 1));
  team.add(TeamModel('تیم دوم', '35 امتیاز', 2));
  team.add(TeamModel('تیم سوم', '54 امتیاز', 3));
  team.add(TeamModel('تیم چهارم', '19 امتیاز', 4));
  team.add(TeamModel('تیم چهارم', '19 امتیاز', 4));
  team.add(TeamModel('تیم چهارم', '19 امتیاز', 4));

  return team;
}