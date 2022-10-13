import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cervejas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.autorenew_outlined))
        ],
      ),
      body: Align(
  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 56, right: 56, top: 24),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      icon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(56.0))))),
            ),
            Padding(padding: EdgeInsets.all(32.0)),
            Text(
              'Nenhuma cerveja encontrada',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
