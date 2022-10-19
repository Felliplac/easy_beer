import 'package:flutter/material.dart';

class Beer extends StatelessWidget {
  const Beer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
       ListTile(
        title: const Text("nome"),
        subtitle: const Text("tagline"),
        leading: Image.network("https://images.punkapi.com/v2/192.png",height: 50.0, fit: BoxFit.fill,),
      ),
       const Divider()
    ]
  );
}