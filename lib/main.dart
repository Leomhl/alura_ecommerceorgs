import 'package:flutter/material.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';

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
            labelColor: Color.fromRGBO(42, 159, 133, 1),
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
              Container(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    "Em desenvolvimento",
                  ),
                ),
              ),
              Container(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    "Em desenvolvimento",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}