import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gezginci/products_page.dart';

void main() {
  testWidgets('ProductsPage Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ProductsPage()));


    await tester.pumpAndSettle();


    expect(find.text('Ürünler'), findsOneWidget);

    expect(find.text('Ürün 1'), findsOneWidget);

    expect(find.text('Ürün açıklaması, fiyatı vb.'), findsOneWidget);

    expect(find.byIcon(Icons.arrow_forward), findsWidgets);
  });
}
