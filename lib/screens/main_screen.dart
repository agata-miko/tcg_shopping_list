import 'package:flutter/material.dart';
import 'package:tcg_shopping_list/models/grocery_item.dart';
import 'package:tcg_shopping_list/screens/new_item_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<GroceryItem> _groceryItems = [];

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItemScreen(),
      ),
    );

    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(_groceryItems[index].name),
          leading: Icon(
            Icons.square,
            color: _groceryItems[index].category.color,
          ),
          trailing: Text((_groceryItems[index].quantity).toString()),
        ),
      ),
    );
  }
}
