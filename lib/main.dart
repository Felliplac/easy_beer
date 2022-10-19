import 'package:easy_beer/beer_list_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  void initState() {
    super.initState();
    fetch();
  }

  Future fetch() async {
    var url = 'https://api.punkapi.com/v2/beers';
    var response = await http.get(Uri.parse(url));
    //print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return buildScreen();
  }

  Widget buildSearch() {
    return Align(
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
    );
  }

  Widget buildList() {
    return ListView.builder(
        itemCount: 10, itemBuilder: ((context, index) => const Beer()));
  }

  Widget buildScreen() {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: const [
            IconButton(onPressed: null, icon: Icon(Icons.autorenew_outlined))
          ],
        ),
        body: Column(
            children: <Widget>[buildSearch(), Expanded(child: buildList())]));
  }
}
