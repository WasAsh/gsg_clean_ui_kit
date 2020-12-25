import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:firstuichallenge/views/shared/register_btn.dart';
import 'package:firstuichallenge/views/shared/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';



class ClientRegister extends StatefulWidget {
  @override
  _ClientRegisterState createState() => _ClientRegisterState();
}

class _ClientRegisterState extends State<ClientRegister> {

  GlobalKey<FormState> _formKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(translator.translate('clientRegistration')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                ),
                Text(
                  translator.translate('clientRegistration') ,
                  style: MyStyles.Cli_Reg_Style,
                ),
              ],
            ),
            Text(
              translator.translate('clientRegistrationTag') ,
              style: MyStyles.Cli_Reg_Tag_Style,
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),
                    drawTextField(translator.translate('userName'), null),
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('password'), null),
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('email'), null),
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('phoneNum'), null),
                    SizedBox(height: 40,),
                    drawButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
