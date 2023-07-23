import 'dart:io';

List ListAuthentication_Admin = [];
List ListAuthentication_Teacher = [];
List ListAuthentication_Student = [];
List ListAuthentication_Parents = [];

List<Map<String,dynamic>> ListStudent = [
{"name":"Tahir", "Class":"9th", "Pwd":"abc1"},
{"name":"Umair", "Class":"9th", "Pwd":"abc1"},
{"name":"Fahad", "Class":"10th", "Pwd":"abc1"},
{"name":"Zulfiqar", "Class":"8th", "Pwd":"abc1"},
{"name":"Saleem", "Class":"10th", "Pwd":"abc1"},

];

void main(){

  String AdminUser = "abc";//"Administrator";
  String AdminPwd  = "123"; //"123%";

    var inputid ; 
    var inputpwd;
    bool isLogin = false;
    bool isContinue = true;
    
    print("Input Admin Userid & Password");
    inputid = stdin.readLineSync();
    inputpwd = stdin.readLineSync();

//print("You input $inputid and $inputpwd");

if (inputid == AdminUser && inputpwd == AdminPwd) {
print("===You are logged-In as Administrator===");

while(isContinue) {  
print("To create logins - Press [T] for Teacher Login|| Press [S] for Student Login || Press [P] for Parent Login" );
    var input1 = stdin.readLineSync();
    if (input1 == "T"){
       AddTeacher();
    }
    else if (input1 == "S"){
       AddStudent();
    }
    else if (input1 == "P"){
       AddParent();
    }
    else{
      isContinue = false;
    }
}
}

/*
    while(isLogin == false){
      if(inputid == Authentication.userid && inputpwd == Authentication.password){
        print("Login Successful");
        isLogin = true;
      }
      else{
        print("Login Failed");
        isLogin = false;
        inputid = stdin.readLineSync();
        inputpwd = stdin.readLineSync();
      }
    }
*/

}

AddTeacher() {
print("Adding Teacher ID and Password (by Admin)");
var T_id = stdin.readLineSync();
var T_pwd = stdin.readLineSync();
Map Teachers = {"T_id":T_id,
                "T_pwd":T_pwd,
               };
ListAuthentication_Teacher.add(Teachers);
print("Do you want to connect as Teacher Y/N");
var teacherlogin= stdin.readLineSync();
    if (teacherlogin == "Y"){
       print("You have selected option [TEACHER]");
       print(ListAuthentication_Teacher);
       print("Total count of teachers -> ${ListAuthentication_Teacher.length}");

       print("Enter your ID and Password (Teacher)");
       var InputT_id = stdin.readLineSync();
       var InputT_pwd = stdin.readLineSync();
       
//       bool TKey = Teachers.containsKey("InputT_id");
//       String value = ListAuthentication_Teacher[TKey];
print("============ = ${ListAuthentication_Teacher.length}");

  for(var i=0; i<ListAuthentication_Teacher.length; i++)
  {
    print("======================");
    print(ListAuthentication_Teacher[i]['T_id']); // 001

    if(InputT_id == ListAuthentication_Teacher[i]['T_id']){
       print("Successful login || Please select class to work on i.e. 9th or 10th");
       break;
    }
  }

print("Enter Class");
var teacherloginClass= stdin.readLineSync();
    if (teacherloginClass == "9th"){
       print("You have selected 9th grade");
       print(ListStudent);    
       print("Total count of teachers -> ${ListStudent.length}");
    }


    }
    else {
       print("Teacher Login Ends");
    }


}

AddStudent() {
print("Enter your ID and Password (Students)");
var S_id = stdin.readLineSync();
var S_pwd = stdin.readLineSync();
var S_class = stdin.readLineSync();

Map Students = {"S_id":S_id,
                "S_pwd":S_pwd,
                "S_class":S_class,
               };
ListAuthentication_Student.add(Students);
print("Do you want to connect as Student Y/N");
var studentlogin= stdin.readLineSync();
    if (studentlogin == "Y"){
       print("You have selected option [STUDENT]");
       print(ListAuthentication_Student);
    }
    else {
       print("Student Login Ends");
    }

}

AddParent() {
print("Enter your ID and Password (Parents)");
var P_id = stdin.readLineSync();
var P_pwd = stdin.readLineSync();
Map Parents = {"P_id":P_id,
                "P_pwd":P_pwd,
               };
ListAuthentication_Parents.add(Parents);
print("Do you want to connect as Student Y/N");
var parentlogin= stdin.readLineSync();
    if (parentlogin == "Y"){
       print("You have selected option [PARENT]");
       print(ListAuthentication_Parents);
    }
    else {
       print("Parent Login Ends");
    }

}
