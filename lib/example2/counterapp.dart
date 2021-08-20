import 'package:flutter/material.dart';
import 'package:intomodel/model/counter.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (_) => Counter(0),
      child: MaterialApp(
        title: 'Flutter Value',
        theme: ThemeData(
          primarySwatch: Colors.blue 
        ),
        home: HomePage(),
      ),
      
    );
  }
}