import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Secondary_Green,
      appBar: appBar(translator.translate('products')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 40,
            crossAxisSpacing: 10,
            crossAxisCount: 2 ,
          ),
          itemBuilder: (context , index){
            return _drawSingleProduct();
          },
        )
      ),
    );
  }

  Widget _drawSingleProduct(){
    return Container(
      height: 140.h,
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15) ,
        color: MyColors.Main_White,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Container(
            height: 90.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/imgs/1.jpg') ,
                  fit: BoxFit.fill
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10 , right: 10),
            child: Text(
              translator.translate('iphone') ,
              style: MyStyles.Product_Name,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10 , right: 10),
            child: Text(
              translator.translate('usd') ,
              style: MyStyles.Product_Price,
            ),
          ),
        ],
      ),
    );
  }

}
