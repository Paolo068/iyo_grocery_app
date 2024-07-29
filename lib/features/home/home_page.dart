import 'package:flutter/material.dart';
import 'package:iyo_grocery_app/core/assets.gen.dart';
import 'package:iyo_grocery_app/core/pallete.dart';
import 'package:iyo_grocery_app/features/account/account_page.dart';
import 'package:iyo_grocery_app/features/cart/cart_page.dart';
import 'package:iyo_grocery_app/features/explore/explore_page.dart';
import 'package:iyo_grocery_app/features/favorite/favorite_page.dart';

import '../shop/shop_page.dart';
import 'widgets/navigation_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        elevation: 5,
        surfaceTintColor: Pallete.green,
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
        selectedIndex: currentPage,
        onDestinationSelected: (destination) => setState(() {
          currentPage = destination;
        }),
        destinations: destinations,
      ),
    );
  }

  int currentPage = 0;

  List<Widget> pages = [
    const ShopPage(),
    const ExplorePage(),
    const CartPage(),
    const FavoritePage(),
    const AccountPage(),
  ];

  List<Widget> destinations = [
    NavigationItem(
      label: 'Shop',
      icon: Assets.svgs.shopIcon,
    ),
    NavigationItem(
      label: 'Explore',
      icon: Assets.svgs.exploreIcon,
    ),
    NavigationItem(
      label: 'Cart',
      icon: Assets.svgs.cartIcon,
    ),
    NavigationItem(
      label: 'Favorite',
      icon: Assets.svgs.favoriteIcon,
    ),
    NavigationItem(
      label: 'Account',
      icon: Assets.svgs.userIcon,
    ),
  ];
}
