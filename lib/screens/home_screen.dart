import 'package:flutter/material.dart';
import 'package:proj/components/orgs_highlights_card.dart';
import 'package:proj/components/orgs_cards_list.dart';
import 'package:proj/components/orgs_navigation_bar.dart';
import 'package:proj/components/orgs_search_bar.dart';
import 'package:proj/components/orgs_spotlight_card.dart';
import 'package:proj/components/orgs_stores_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png',height: kToolbarHeight,),
                SizedBox(height: 20,),
                Text(
                  'Olá, Leonardo',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(70, 70, 70, 1)
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Encontre os melhores produtores',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                OrgsSearchBar(),
                SizedBox(height: 10),
                OrgsCardsList(heightList: 160, cards: [
                  OrgsHighlightsCard(
                    img: 'assets/images/fruits.png',
                    title: 'Orgs commerce',
                    description: 'Uma descrição',
                    color: Color.fromRGBO(254, 238, 210, 1),
                    btnAction: (){},
                  ),
                  OrgsHighlightsCard(
                    img: 'assets/images/fruits.png',
                    title: 'Lorem ipsum',
                    description: 'Uma descrição',
                    color: Color.fromRGBO(254, 238, 210, 1),
                    btnAction: (){},
                  ),
                  OrgsHighlightsCard(
                    img: 'assets/images/fruits.png',
                    title: 'Frutas gostosas',
                    description: 'Uma descrição',
                    color: Color.fromRGBO(254, 238, 210, 1),
                    btnAction: (){},
                  ),
                ]),
                SizedBox(height: 10),
                Text(
                  'Cestas em destaque',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(70, 70, 70, 1)
                  ),
                ),
                SizedBox(height: 10),
                OrgsCardsList(
                  heightList: 140,
                  cards: [
                    OrgsSpotlightCard(
                      img: 'assets/images/fruits.png',
                      color: Color.fromRGBO(224, 255, 249, 1),
                      description: 'Pack de frutas',
                      place: 'Fruits punk',
                      price: '25,90',
                    ),
                    OrgsSpotlightCard(
                      img: 'assets/images/fruits.png',
                      color: Color.fromRGBO(224, 255, 249, 1),
                      description: 'Legumes frescos',
                      place: 'Legume org',
                      price: '27,90',
                    ),
                  ]
                ),

                SizedBox(height: 20),
                Text(
                  'Mais acessados',
                  style: TextStyle(
                    color: Color.fromRGBO(70, 70, 70, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                StoresCard(
                  img: 'assets/images/store1.png',
                  distance: '10',
                  title: 'Manjericão',
                ),
                SizedBox(height: 10),
                StoresCard(
                  img: 'assets/images/store2.png',
                  distance: '2',
                  title: 'Agrotoy',
                ),
                SizedBox(height: 10),
                StoresCard(
                  img: 'assets/images/store3.png',
                  distance: '12',
                  title: 'Jenny Jack',
                ),
                SizedBox(height: 10),
                StoresCard(
                  img: 'assets/images/store4.png',
                  distance: '10',
                  title: 'Grow',
                ),
                StoresCard(
                  img: 'assets/images/store5.png',
                  distance: '5',
                  title: 'Potager',
                ),
              ],
            ),
          ),
      ),
      bottomNavigationBar: OrgsNavigationBar(),
    );
  }
}