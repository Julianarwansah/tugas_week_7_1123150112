import 'package:flutter/material.dart';

class ListViewSparateHorizontal extends StatelessWidget {
  const ListViewSparateHorizontal({super.key});

  final List<Map<String, dynamic>> products = const [
    {'icon': Icons.phone_iphone, 'name': 'Smartphone', 'price': 4500},
    {'icon': Icons.laptop_mac, 'name': 'Laptop', 'price': 12000},
    {'icon': Icons.headphones, 'name': 'Headset', 'price': 850},
    {'icon': Icons.watch, 'name': 'Smartwatch', 'price': 2300},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal ListView'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Featured Products',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: products.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final product = products[index];
                return Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(product['icon'], size: 60, color: Colors.blue),
                      const SizedBox(height: 12),
                      Text(
                        product['name'],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Rp ${product['price'] ~/ 1000}K',
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
