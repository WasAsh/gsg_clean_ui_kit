import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:firstuichallenge/views/shared/logo.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(translator.translate('about')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: drawLogo()),
            Text(
                translator.translate('about') ,
              style: MyStyles.Skip_Style,
            ),
            Text(
                translator.translate('mobStoSam') ,
              style: MyStyles.Product_Name,
              maxLines: 4,
            ),
            SizedBox(height: 20,) ,
            Row(
              children: [
                _drawIcon(Icons.call),
                SizedBox(width: 10,) ,
                _drawIcon(Icons.share)
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _drawIcon(IconData _icon){
    return Container(
      height: 35.h,
      width: 35.w,
      decoration: BoxDecoration(
        color: MyColors.Main_Green,
        borderRadius: BorderRadius.circular(50) ,
      ),
      child: IconButton(
        icon: Icon(_icon , color: MyColors.Main_White, size: 15,),
        onPressed: (){},
      ),
    );
  }
  
}
