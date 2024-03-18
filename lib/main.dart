import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home:  LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);




  @override
  State<LoginPage> createState() => _LoginPage();
}
class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
              appBar: AppBar(title: Text('Login Screen App',style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                      children: [
                        Text('CodePlayon' , style:TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
                        SizedBox(height: 100.0,),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label:Text('User Name') ,
                          ),
                          autofocus: true ,
                        ),
                        SizedBox(height: 10.0,),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label:Text('Password') ,
                          ),

                        ),
                        SizedBox(height: 50.0,),

                        Row(children: [
                          Expanded(child:
                          MaterialButton(
                            height: 50,
                           color: Colors.blue,
                        onPressed: (){
                          } , child: Text('LOGIN',style: TextStyle(color: Colors.white , fontWeight: FontWeight.w700 ,fontSize: 18 ),))
                          ) ,

                        ],),

                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account?'),
                              TextButton(onPressed: (){}, child: Text('Sign In',style: TextStyle(color: Colors.blue),))
                            ],
                          ),
                        )









                      ]),
                ),
              ),
            )
    );
  }
}
