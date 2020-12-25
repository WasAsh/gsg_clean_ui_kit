import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:firstuichallenge/views/shared/drawer.dart';
import 'package:firstuichallenge/views/stores_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


final List<String> imgList = [
  'assets/imgs/1.jpg' ,
  'assets/imgs/2.jpg' ,
  'assets/imgs/3.jpg' ,
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Widget> imageSliders = imgList.map((item) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage(item,) ,
        fit: BoxFit.fill ,
      )
    ),
  )).toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Secondary_Green,
      appBar: appBar(translator.translate('cate')),
      endDrawer: myDrawer(context),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _drawSlider(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        translator.translate('mainCate') ,
                        style: MyStyles.Drawer_Style,
                      ),
                      SizedBox(height: 20,) ,
                      _drawCategories(translator.translate('mob') , 'assets/imgs/1.jpg' , (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StoresPage()));
                      }),
                      SizedBox(height: 20,) ,
                      _drawCategories(translator.translate('cloth') , 'assets/imgs/2.jpg' , (){}),
                      SizedBox(height: 20,) ,
                      _drawCategories(translator.translate('car') , 'assets/imgs/3.jpg' , (){}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: MyColors.Main_Green,
        child: Icon(Icons.add , color: MyColors.Main_White,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _drawSlider(){
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2 ,
          enlargeCenterPage: true ,
          scrollDirection: Axis.horizontal ,
          autoPlay: true ,
        ),
        items: imageSliders,
      ),
    );
  }

  Widget _drawCategories(String _name , String _img , Function _fun){
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColors.Main_White,
      ),
      child: GestureDetector(
        onTap: _fun,
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 150.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_img) ,
                    fit: BoxFit.contain,
                  )
              ),
            ),
            SizedBox(width: 20,) ,
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  _name ,
                  maxLines: 2,
                  style: MyStyles.Drawer_Style,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
