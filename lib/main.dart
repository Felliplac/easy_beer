import 'package:easy_beer/beer_list_item.dart';
import 'package:easy_beer/freezed_classes.dart';
import 'package:easy_beer/tela_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  List<BeerApi> list = List.empty();
  List<BeerApi> randomBeer = List.empty();

  @override
  void initState() {
    super.initState();
    fetch();
    getRandomBeer();
  }

  Future<List> fetch() async {
    const url = 'https://api.punkapi.com/v2/beers?page=2&per_page=80';
    final response = await http.get(Uri.parse(url));
    var json = (jsonDecode(response.body) as List)
        .map((data) => BeerApi.fromJson(data))
        .toList();

    list = json;

    return json;
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
          Padding(padding: EdgeInsets.all(16.0)),
        ],
      ),
    );
  }

  Widget buildList() {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: ((context, index) => Beer(list[index])));
  }

  Future<List> getRandomBeer() async {
    const url = 'https://api.punkapi.com/v2/beers/random';
    final response = await http.get(Uri.parse(url));
    var json =
        (jsonDecode(response.body) as List)
        .map((data) => BeerApi.fromJson(data))
        .toList();

    randomBeer = json;
    return json;
  }

  Widget buildScreen() {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: () {
                  getRandomBeer();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TelaItem(randomBeer.first)));
                },
                icon: const Icon(Icons.autorenew_outlined))
          ],
        ),
        body: Column(children: <Widget>[
          buildSearch(),
          if (list.isEmpty)
            const Text(
              'Nenhuma cerveja encontrada',
              style: TextStyle(fontSize: 24),
            )
          else
            Expanded(child: buildList())
        ]));
  }
}
