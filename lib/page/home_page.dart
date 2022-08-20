import 'package:flutter/material.dart';
import 'package:untitled1/page/detaill_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Национальные блюда Узбекистана',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Billabong'),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.grey,
        child: Stack(
          children: [
            Center(
                child:Image.asset('assets/images/img1.png',
                  fit: BoxFit.cover,
              )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50,top: 450,bottom: 0,right: 0),
                  child:RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 70,),
                    elevation: 20,
                    child: Text('Click me',style: TextStyle(fontSize: 30,fontFamily: 'Billabong')),
                      color: Colors.blue,
                    onPressed: (){
                      Navigator.pushNamed(context, DetaillPage.id);
                    },
                  )
                ),
              ],
            )
                ],
              ),

            ),
      
        );
  }
}