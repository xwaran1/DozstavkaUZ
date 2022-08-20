import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/page/detaill_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var isLoggedIn = true;
  _initTimer(){
    Timer(Duration(seconds: 5), () {
      if (isLoggedIn){
       Navigator.pushReplacementNamed(context, DetaillPage.id);
      }else{

      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
        child: Stack(
          children: [
            Center(
                child:Image.network('https://darakchi.uz/storage/f9/00/c6/63523/conversions/zv3QoKB-HnKI9HJvcVsFCPP4XA_yN4QQ-xl.jpg',
              height: 100,
              width: 100,)),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Доставка еды'),
                  )
                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}