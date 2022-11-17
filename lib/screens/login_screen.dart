import 'package:flutter/material.dart';

import '../widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController passwordController=TextEditingController();
  TextEditingController phoneController=TextEditingController();

  bool getValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Container(

          child: Column(
          children: [

            CustomTextField(textEditingController: phoneController, iconData: Icons.phone_android_outlined, hintText: "+91", enable: true, isObsecre: true),
            SizedBox(height: 15,),
            CustomTextField(textEditingController: passwordController, iconData: Icons.password, hintText: "Password", enable: true, isObsecre: true),
            SizedBox(height: 18,),
           Row(
             children: [

               Checkbox(
                 checkColor: Colors.white,
                 //fillColor: MaterialStateProperty.resolveWith(Colors.black),
                 value: getValue,
                 onChanged: (bool? value) {
                   setState(() {
                     getValue = value!;
                   });
                   Text("Remember ME",
                     style: TextStyle(
                       color: Colors.black,
                     ),
                   );
                 },

               ),
               Text("Remember Me"),
             ],
           ),
           SizedBox(height: 15,),

           Container(
             height: 40,
             width: 310,

             child:  ElevatedButton(
               onPressed: ()
               {

               },

               child: Text("Login"),
               style: ElevatedButton.styleFrom(
                 shape: new RoundedRectangleBorder
                   (
                   borderRadius: BorderRadius.circular(30),
                 ),
               ),

             ),
           ),
             SizedBox(height: 19,),

             Row(


               children: [

                 Padding(
                   padding: EdgeInsets.only(left: 20),
                   child: ElevatedButton(
                     onPressed: ()
                     {

                     },

                     child: Text("Register",
                       style: TextStyle(
                         color: Colors.black,
                       ),


                     ),

                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,

                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),


                     ),

                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.only(left: 70,),
                   child: ElevatedButton(
                     onPressed: ()
                     {

                     },

                     child: Text("Forgot your password",
                       style: TextStyle(
                         color: Colors.black,
                       ),

                     ),

                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,

                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),


                     ),


                   ),
                 ),




               ],
             )


          ],


          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Login"),
      ),


    );
  }
}
