class JobsData{
  late int data;
  late List<JobModel> list;
}



class JobModel {
  late String name,image,compname,email,token,desc,skills;
  late int id;

  JobModel.fromMap(Map<String,dynamic>map){
    name = map ["name"];
    image = map ["image"];
    compname = map ["comp_name"];
    id = map ["id"];
    email = map ["email"];
    token = "atef";
    desc = map ["job_description"];
    skills = map ["job_skill"];
  }
}