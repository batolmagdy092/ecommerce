import 'package:ecommerce/Provider/signup_provider.dart';
import 'package:ecommerce/Screen/Home.dart';
import 'package:ecommerce/Screen/Signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Provider/loginprovider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  

  @override
  Widget build(BuildContext context) {

    TextEditingController userName = TextEditingController();
    TextEditingController email = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),

      body: Consumer<Loginprovider>
        (builder: (context, value, child)
      {
        var obj = value.data;
        return  Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                
                CircleAvatar(
                  radius: 30,
                    backgroundImage: AssetImage("images/windows.png"),
                ),

                SizedBox(height: 20,),

                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: userName,
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: email,
                ),
                
                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () async{
                    var obj =await value.data;
                    userName.text;
                    email.text;

                    if(obj == true)
                    {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
                  },
                  child: Text("Login"),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen(),),);
                },
                    child: Text("Don't have an account Sign up"),
                ),
              ],
            ),
          ),
        );
      },
      ),
    );
  }
}
