import "package:flutter/material.dart";


class inventoryPage extends StatefulWidget {
  const inventoryPage({super.key});

  @override
  State<inventoryPage> createState() => _inventoryPage();
}

class _inventoryPage extends State<inventoryPage> {
  var Apitext = "";
  var recipe = "";
  var history = [];
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: 'Enter a Recipe ID'),
            controller: textController,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                recipe = textController.text;
                history.add(recipe);
              });
            },
            child: Text(
              'Enter New Item!',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Text(Apitext),
          for (var i = history.length - 1; i >= 0; i--) Text(history[i]),
        ],
      ),
    );
  }
}