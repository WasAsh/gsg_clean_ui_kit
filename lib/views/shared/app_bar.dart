import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:flutter/material.dart';



Widget appBar(String _title){
  return AppBar(
    centerTitle: true,
    title: Text(_title , style: MyStyles.App_Bar_Style,),
    elevation: 0,
    backgroundColor: MyColors.Main_Green,
  );
}