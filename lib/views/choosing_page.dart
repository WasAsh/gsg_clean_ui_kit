import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/home_page.dart';
import 'package:firstuichallenge/views/register_choosing.dart';
import 'package:firstuichallenge/views/shared/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class ChoosingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 360,
      height: 640,
      allowFontScaling: true,
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 120.h,
            ),
            drawLogo(),
            SizedBox(
              height: 120.h,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      translator.translate('skip'),
                      style: MyStyles.Skip_Style,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterChoosing()));
                    },
                    child: Text(
                      translator.translate('register'),
                      style: MyStyles.Reg_Style,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
