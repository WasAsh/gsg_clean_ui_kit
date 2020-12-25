import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:firstuichallenge/views/shared/register_btn.dart';
import 'package:firstuichallenge/views/shared/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(translator.translate('contactUs')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                drawTextField(translator.translate('userName'), null),
                SizedBox(height: 10,),
                drawTextField(translator.translate('phoneNum'), null),
                SizedBox(height: 10,),
                drawTextField(translator.translate('shTitle'), null),
                SizedBox(height: 10,),
                _drawRichText(),
                SizedBox(height: 20,),
                drawButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawRichText(){
    return Container(
      height: 200.h,
      child: TextFormField(
        maxLines: 10,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }

}
