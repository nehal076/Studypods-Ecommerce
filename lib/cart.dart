import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CartItem(
          name: 'campus shoes',
          image: 'assets/campus.jpeg',
          price: 9.99,
          quantity: 2,
        ),
        const CartItem(
          name: 'cricket',
          image: 'assets/cricket.jpg',
          price: 14.99,
          quantity: 1,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Total: \$34.97',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement checkout functionality.
                },
                child: const Text('Checkout'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  final int quantity;

  const CartItem({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  '\$${(price * quantity).toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // TODO: Implement remove item functionality.
                      },
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                    Text(quantity.toString()),
                    IconButton(
                      onPressed: () {
                        // TODO: Implement add item functionality.
                      },
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
