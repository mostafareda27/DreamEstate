import 'package:dream_estate_project/modules/favourites/favourites.dart';
import 'package:dream_estate_project/modules/home/home_screen.dart';
import 'package:dream_estate_project/modules/search/search.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}
class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens =[
    HomeScreen(),
    SearchScreen(),
    FavouritesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
/*
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
*/
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(()
          {
            currentIndex= index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home_filled
            ),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.search_outlined
            ),
            label: 'Search',

          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.favorite_outline_rounded
            ),
            label: 'Favourites',

          ),
        ],
      ),
    );
  }
}
