import 'package:flutter/material.dart';
import 'package:myshop/model/brew.dart';

class BrewItem extends StatelessWidget {
  final Brew brew;
  BrewItem({this.brew});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/coffee_icon.png'),
          radius: 30.0,
          backgroundColor: Colors.brown[brew.strength],
        ),
        title: Text(brew.name),
        subtitle: Text('${brew.sugar} spoon sugars'),
      ),
    );
  }
}
