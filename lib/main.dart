import 'package:flutter/material.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/menu_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'core/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(

            labelColor: AppColors.green,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.home,),
                text: 'Início',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favoritos',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Perfil',
              ),
              Tab(
                icon: Icon(Icons.menu),
                text: 'Menu',
              ),
            ],
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              FavoritesScreen(),
              ProfileScreen(),
              MenuScreen(),
            ],
          ),
        ),
      ),
    );
  }
}