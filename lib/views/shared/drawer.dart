import 'package:firstuichallenge/const/colors.dart';
import 'package:firstuichallenge/const/text_styles.dart';
import 'package:firstuichallenge/views/about_page.dart';
import 'package:firstuichallenge/views/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


Widget myDrawer(BuildContext context){
  return Drawer(
    child: Container(
      color: MyColors.Secondary_Green,
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/imgs/logo.png'),
                  radius: 40,
                ),
                SizedBox(width: 20,) ,
                Text(
                  translator.translate('mobileStore') ,
                  style: MyStyles.Drawer_Style,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.mail , color: MyColors.Main_Black,),
            title: Text(
              translator.translate('massages') ,
              style: MyStyles.Drawer_Style ,
            ),
          ),
          Divider() ,
          ListTile(
            leading: Icon(Icons.shopping_cart , color: MyColors.Main_Black,),
            title: Text(
              translator.translate('products') ,
              style: MyStyles.Drawer_Style,
            ),
          ),
          Divider() ,
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutPage()));
            },
            leading: Icon(Icons.control_point , color: MyColors.Main_Black,),
            title: Text(
              translator.translate('about') ,
              style: MyStyles.Drawer_Style,
            ),
          ),
          Divider() ,
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactPage()));
            },
            leading: Icon(Icons.call , color: MyColors.Main_Black,),
            title: Text(
              translator.translate('contactUs') ,
              style: MyStyles.Drawer_Style,
            ),
          ),
          Divider() ,
          SizedBox(
            height: 30,
            child: RaisedButton(
              color: MyColors.Main_Green,
              child: Text(
                translator.translate('changeBtn') ,
                style: MyStyles.Drawer_Style,
              ),
              onPressed: (){
                translator.setNewLanguage(
                  context ,
                  newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar' ,
                  restart: true ,
                );
              },
            ),
          ),
        ],
      ),
    ),
  ) ;
}