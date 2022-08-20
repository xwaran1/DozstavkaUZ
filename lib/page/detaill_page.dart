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
                  child: Text('Fruit'),
                ),
                Container(
                  child: Text('Eat'),
                ),
                Container(
                  child: Text('Juice'),
                )
              ],
            ),

          ),
          body: Column(
            children: [
              Container(
                color: Colors.red,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
              ),
              Container(
                color: Colors.yellow,
                height: 100,
              )
            ],
          ),
        )
    );
  }
}
