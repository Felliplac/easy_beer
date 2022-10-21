import 'package:flutter/material.dart';

import 'freezed_classes.dart';

class TelaItem extends StatelessWidget {
  final BeerApi _beerApi;
  const TelaItem(this._beerApi, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_beerApi.name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(16.0)),
          Center(
              child: Image.network(
            _beerApi.image_url,
            height: 160,
            fit: BoxFit.fill,
          )),
          const Padding(padding: EdgeInsets.all(16.0)),
          const Text('Descrição:', textAlign: TextAlign.left, style: TextStyle(fontSize: 24)),
          Padding(padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: Text(_beerApi.description, style: const TextStyle(fontSize: 20),textAlign: TextAlign.justify)),
        ],
      ),
    );
  }
}
