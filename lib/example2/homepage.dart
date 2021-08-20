import 'package:flutter/material.dart';
import 'package:intomodel/model/counter.dart';
import 'package:intomodel/example2/secondpage.dart';
import 'package:provider/provider.dart';
import 'firstpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${counter.getCounter()}'),
            RaisedButton(
              onPressed: openFirstPage,
              child: Text("first page"),
            ),
            ElevatedButton(
                onPressed: openSecondPage, child: Text("second page"))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counter.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
            heroTag: null,
          ),
          FloatingActionButton(
            onPressed: counter.decrement,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
            heroTag: null,
          )
        ],
      ),
    );
  }

  Future openFirstPage() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => FirstPage()));
  }

  Future openSecondPage() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage()));
  }
}
