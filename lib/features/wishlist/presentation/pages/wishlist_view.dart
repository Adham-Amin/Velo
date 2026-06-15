import 'package:flutter/material.dart';
import 'package:velo/features/wishlist/presentation/widgets/wishlist_view_body.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wishlist')),
      body: const WishlistViewBody(),
    );
  }
}
