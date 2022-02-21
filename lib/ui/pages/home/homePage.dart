import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('APIs Consumer'),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
            ],
          )
        ],
      ),
    );
  }
}
