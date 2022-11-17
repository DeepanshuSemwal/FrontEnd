import 'package:flutter/material.dart';

import '../widget/custom_text_field.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({Key? key}) : super(key: key);

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {

  TextEditingController passwordController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController verificationController=TextEditingController();

  bool getValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Container(

          child: Column(
            children: [

              CustomTextField(textEditingController: phoneController, iconData: Icons.phone_android_outlined, hintText: "Mobile Number", enable: true, isObsecre: true),
              SizedBox(height: 15,),
              CustomTextField(textEditingController: verificationController, iconData: Icons.message, hintText: "Verification Code", enable: true, isObsecre: true),
            Container(

              child: Padding(
                padding: EdgeInsets.only(left: 295,top: 5),
                child: ElevatedButton(
                  onPressed: ()
                  {

                  },

                  child: Text("OTP"),

                ),
              ),
            ),




              CustomTextField(textEditingController: passwordController, iconData: Icons.key, hintText: "New Password", enable: true, isObsecre: true),
              SizedBox(height: 20,),


              Container(
                height: 40,
                width: 310,

                child:  ElevatedButton(
                  onPressed: ()
                  {

                  },

                  child: Text("Continue"),
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder
                      (
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                ),
              ),



            ],


          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Reset Password"),
      ),


    );
  }
}