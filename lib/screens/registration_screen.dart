import 'package:flutter/material.dart';

import '../widget/custom_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  TextEditingController nameController=TextEditingController();
  TextEditingController inviteCode=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController otpController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                CustomTextField(textEditingController: phoneController, iconData: Icons.person, hintText: "+91", enable: true, isObsecre: false),

                Padding(
                  padding: EdgeInsets.only(top: 5,left: 5),
                    child: Text("Enter Your mobile")),
                SizedBox(height: 20,),
                CustomTextField(textEditingController: otpController, iconData: Icons.message, hintText: "OTP", enable: true, isObsecre: false),
                SizedBox(height: 5,),
                    Container(
                      child:Row(
                        children: [
                          Text("Enter OTP"),
                          Padding(
                            padding: EdgeInsets.only(left: 250),
                            child: ElevatedButton(
                              onPressed: ()
                              {

                              },

                              child: Text("OTP"),

                            ),
                          ),


                        ],
                      ) ,
                    ),
                SizedBox(height: 10,),
                CustomTextField(textEditingController: passwordController, iconData: Icons.key, hintText: "Password", enable: true, isObsecre: true),
                Padding(
                    padding: EdgeInsets.only(top: 5,left: 5),
                    child: Text("Enter Your password")),

                SizedBox(height: 10,),
                CustomTextField(textEditingController: inviteCode, iconData: Icons.code, hintText: "3798A#7", enable: true, isObsecre: false),
                Padding(
                    padding: EdgeInsets.only(top: 5,left: 5),
                    child: Text("Enter Invite Code")),


                SizedBox(height: 10,),


                Center(

                  child: Container(
                    height: 40,
                    width: 200,
                      child: ElevatedButton(
                        onPressed: ()
                        {

                        },

                        child: Text("Register"),

                      ),

                  ),
                ),

              ],
            ),

          ),
      appBar: AppBar(
        title: Text("Register"),
      ),



    );
  }
}
