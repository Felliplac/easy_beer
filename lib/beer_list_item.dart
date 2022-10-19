import 'package:easy_beer/freezed_classes.dart';
import 'package:flutter/material.dart';

class Beer extends StatelessWidget {
    final BeerApi _beerApi;
  Beer(this._beerApi);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
       ListTile(
        title:  Text(_beerApi.name),
        subtitle: Text(_beerApi.tagline),
        leading: Image.network(_beerApi.image_url,height: 50.0, fit: BoxFit.fill,),
      ),
       const Divider()
    ]
  );
}