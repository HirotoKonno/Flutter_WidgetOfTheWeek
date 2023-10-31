import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesView extends StatefulWidget {
  const SharedPreferencesView({Key? key}) : super(key: key);

  @override
  createState() => _SharedPreferencesState();
}

class _SharedPreferencesState extends State<SharedPreferencesView> {
  String textInit = "";
  final TextEditingController _nameController = TextEditingController();

  _saveData() async {
    String nameValue = _nameController.text;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("words", nameValue);
  }

  _getData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      textInit = prefs.getString("words") ?? "No input words";
    });
  }

  _deleteeData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("name");
    setState(() {
      textInit = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(""),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              textInit,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: "Input String!"),
              controller: _nameController,
            ),
            Row(
              children: [
                const SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  ),
                  onPressed: _saveData,
                  child: const Text('Save'),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  ),
                  onPressed: _getData,
                  child: const Text('Show'),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  ),
                  onPressed: _deleteeData,
                  child: const Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}