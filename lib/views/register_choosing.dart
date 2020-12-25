import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/client_register.dart';
import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:firstuichallenge/views/store_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';




class RegisterChoosing extends StatefulWidget {
  @override
  _RegisterChoosingState createState() => _RegisterChoosingState();
}

class _RegisterChoosingState extends State<RegisterChoosing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(translator.translate('register')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              translator.translate('nUser') ,
              style: MyStyles.Reg_Head,
            ),
            Text(
              translator.translate('nUserTag') ,
              style: MyStyles.Reg_Tag,
            ),
            SizedBox(height: 50,),
            Center(
              child: _drawContainer(
                Icons.store ,
                  translator.translate('sto') ,
                  (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StoreRegister()));
                  }
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: _drawContainer(
                  Icons.person ,
                  translator.translate('cli') ,
                      (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ClientRegister()));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawContainer(IconData _icon , String _text , Function _fun){
    return GestureDetector(
      onTap: _fun ,
      child: Container(
        width: 110.w,
        height: 110.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: MyColors.Main_White,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200] ,
                spreadRadius: 5 ,
                blurRadius: 7 ,
                offset: Offset(0,3) ,
              ),
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _icon ,
              size: 30,
              color: MyColors.Main_Green,
            ),
            Text(
              _text ,
              style: MyStyles.Reg_Head,
            ),
          ],
        ),
      ),
    );
  }

}
