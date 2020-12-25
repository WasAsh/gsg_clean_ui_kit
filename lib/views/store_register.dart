import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:firstuichallenge/views/shared/register_btn.dart';
import 'package:firstuichallenge/views/shared/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';




class StoreRegister extends StatefulWidget {
  @override
  _StoreRegisterState createState() => _StoreRegisterState();
}

class _StoreRegisterState extends State<StoreRegister> {

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(translator.translate('stoReg')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.store,
                ),
                Text(
                  translator.translate('stoReg') ,
                  style: MyStyles.Reg_Head,
                ),
              ],
            ),
            Text(
              translator.translate('stoRegTag') ,
              style: MyStyles.Reg_Tag,
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    drawTextField(translator.translate('stoName'), null),
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('userName'), null) ,
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('password'), null) ,
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('email'), null) ,
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('phoneNum'), null) ,
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('stoLogo'), IconButton(icon: Icon(Icons.file_upload , color: MyColors.Main_Green,),onPressed: (){},)) ,
                    SizedBox(height: 10,),
                    drawTextField(translator.translate('stoAct'), null) ,
                    SizedBox(height: 10,),
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
