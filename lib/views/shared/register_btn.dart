import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';



Widget drawButton(){
  return Container(
    height: 45.h,
    width: double.infinity,
    decoration: BoxDecoration(
      color: MyColors.Main_Green ,
      borderRadius: BorderRadius.circular(30) ,
    ),
    child: FlatButton(
      onPressed: (){},
      child: Text(
        translator.translate('register') ,
        style: MyStyles.Register_Btn_Style
      ),
    ),
  );
}
