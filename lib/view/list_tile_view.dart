import 'package:flutter/material.dart';

class ListTileView extends StatefulWidget {
  const ListTileView({super.key});

  @override
  State<ListTileView> createState() => ListTimeViewState();
}

class ListTimeViewState extends State<ListTileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Time View"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: ListTile(
        leading: const Icon(Icons.accessible_forward),
        title: const Text("Alvish Shrestha"),
        subtitle: const Text("Kathmandu, Nepal"),
        trailing: Wrap(
          spacing: 2,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
