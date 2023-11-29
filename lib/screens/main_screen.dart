import 'package:flutter/material.dart';
import 'package:tcg_shopping_list/data/dummy_items.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(groceryItems[0].name),
            leading: Icon(Icons.square, color: groceryItems[0].category.color,),
            trailing: Text((groceryItems[0].quantity).toString()),
          ),
          ListTile(
            title: Text(groceryItems[1].name),
            leading: Icon(Icons.square, color: groceryItems[1].category.color,),
            trailing: Text((groceryItems[1].quantity).toString()),
          ),
          ListTile(
            title: Text(groceryItems[2].name),
            leading: Icon(Icons.square, color: groceryItems[2].category.color,),
            trailing: Text((groceryItems[2].quantity).toString()),
          ),
        ],
      ),
    );
  }
}
