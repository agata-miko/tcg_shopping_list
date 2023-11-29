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
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(groceryItems[index].name),
          leading: Icon(
            Icons.square,
            color: groceryItems[index].category.color,
          ),
          trailing: Text((groceryItems[index].quantity).toString()),
        ),
      ),
    );
  }
}
