import 'package:firstuichallenge/const/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';





Widget drawTextField( String _name , Widget _sufIcon){
  return Container(
    height: 45.h,
    child: TextFormField(
      decoration: InputDecoration(
        hintText: _name,
        hintStyle: MyStyles.Text_Field_Style,
        suffixIcon: _sufIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );
}
