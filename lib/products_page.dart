import 'package:flutter/material.dart';
import 'package:gezginci/product.dart';
import 'package:gezginci/product_detail_page.dart';

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Fahriye Yüksel', description: 'Sivas, 25.03.2024'),
    Product(name: 'Deniz Vural', description: 'Hatay, 02.05.2024'),
    Product(name: 'Hüseyin Eraslan', description: 'Diyarbakır, 01.08.2024'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gezginciler'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
