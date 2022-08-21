import 'package:flutter/material.dart';
class DetaillPage extends StatefulWidget {
  static final String id = 'detaill_page';
  const DetaillPage({Key? key}) : super(key: key);

  @override
  State<DetaillPage> createState() => _DetaillPageState();
}
class _DetaillPageState extends State<DetaillPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Доставка еды'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Container(
                  child: Image.asset('assets/images/img3.png'),
                  width: 70,
                ),
                Container(
                  child: Image.asset('assets/images/img4.png'),
                  width: 70,
                ),
                Container(
                  child: Image.asset('assets/images/img6.png'),
                  width: 40,
                )
              ],
            )

          ),
          body: TabBarView(
            children: [
            Container(
              color: Colors.red,
            ),
              Container(
                color: Colors.yellow,
              ),
              Container(color: Colors.green,)
            ],
          ),    )

          );


  }
}
