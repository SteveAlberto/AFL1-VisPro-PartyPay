import 'package:flutter/material.dart';
import 'package:warung_digital/core/widgets/price_tag.dart';

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('Warung Digital')),
            body: Center(
                child: Column(
                    children: [
                        PriceTag(amount: 15000),
                        PriceTag(amount: 13000),
                        PriceTag(amount: 19000),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
            ),
        );
    }
}                                       