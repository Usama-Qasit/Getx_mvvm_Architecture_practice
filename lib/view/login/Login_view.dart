


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/login_view_model.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}


class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('login'.tr,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.left,
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.snackBar('email_title'.tr,'email_message'.tr);
                      }
                    },
                    onFieldSubmitted:(value){
                      Utils.fieldFocusChange(context, loginVM.emailFocusNode.value, loginVM.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(
                      hintText: 'email_hint_eng'.tr,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    textAlign: TextAlign.left,
                    controller: loginVM.passwordController.value,
                    focusNode: loginVM.passwordFocusNode.value,
                    obscureText: true,
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.snackBar('pass_tit'.tr,'pass_msg'.tr);
                      }
                    },
                    onFieldSubmitted:(value){
                    },
                    decoration: InputDecoration(
                      hintText: 'password_hint_eng'.tr,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            RoundButton(title: 'login'.tr,width: 200, onPress: (){
              if(_formkey.currentState!.validate()){

              }
            }),
          ],
        ),
      ),
    );
  }
}
