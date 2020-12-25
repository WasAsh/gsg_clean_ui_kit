import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/products_page.dart';
import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';




class StoresPage extends StatefulWidget {
  @override
  _StoresPageState createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(translator.translate('sto')),
      backgroundColor: MyColors.Secondary_Green,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context , index){
              return Column(
                children: [
                  _drawSingleStore(),
                  Divider(color: Colors.grey[300],),
                ],
              );
            },
          ),
      ),
    );
  }

  Widget _drawSingleStore(){
    return Container(
      height: 100.h,
      width: double.infinity,
      child: ListTile(
        leading: Container(
          height: 90.h,
          width: 80.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15) ,
            image: DecorationImage(
                image: AssetImage('assets/imgs/1.jpg') ,
                fit: BoxFit.fill
            ),
          ),
        ),
        title: Text(
          translator.translate('mobSto') ,
          style: MyStyles.Store_Title,
        ),
        subtitle: Text(
          translator.translate('mobStoSam') ,
          style: MyStyles.Store_Sub,
        ),
        trailing: IconButton(
          icon: Icon(Icons.arrow_forward_ios , size: 18 , color: MyColors.Main_Black,),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductsPage()));
          },
        ),
      ),
    );
  }

}
