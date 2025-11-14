import 'package:flutter/material.dart';

class SparateListView extends StatelessWidget {
  const SparateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan List View'),
      ),
      body: ListView.separated(
        itemCount: 5,
        padding: const EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            color: Colors.blue[100],
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
            thickness: 1,
          );
        },
      ),
    );
  }
}
