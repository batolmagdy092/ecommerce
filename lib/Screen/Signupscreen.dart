import 'package:ecommerce/Provider/signup_provider.dart';
import 'package:ecommerce/Screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' ;
import 'package:ecommerce/Provider/signup_provider.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>;
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();

    return Scaffold(
      appBar: AppBar(title:
      Text("SignUp Page "),
      leading: Icon(Icons.list),
        actions: [
          Icon(Icons.settings,),
          Icon(Icons.list),
        ],
      ),

      body: Consumer<Signupprovider>(builder: (context, value, child)
      {
        return  Form(
          child: Container(

            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "UserName",
                        border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20)),
                    ),
                    controller: userName,

                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: "Email",
                        border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                    ),
                    controller: email,
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        labelText: "phone",
                        border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                    ),
                    controller: phone ,
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon( Icons.lock),
                        hintText: "Password",
                        border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                    ),
                    controller: password,
                  ),
                  SizedBox(height: 40,),
                  OutlinedButton(
                    onPressed: () async{
                     var obj = value.data;
                     userName.text;
                      email.text;
                      password.text;
                      phone.text;
                    value.postdata(userName as String, password as String, email as String, phone as String);
                     if(obj==true) {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> LoginScreen(),),);
                      }
                     else
                       {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Error")));
                      }
                    },
                    child: Text("SignUp"),
                  ),

                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                      child: Text("Already have an account? Login"))
                ],
              ),
            ),
          ),
        );
      },
      ),
    );
  }
}