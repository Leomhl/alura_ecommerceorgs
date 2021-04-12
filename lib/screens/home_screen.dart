import 'package:flutter/material.dart';
import 'package:proj/components/orgs_highlights_card.dart';
import 'package:proj/components/orgs_highlights_cards_list.dart';
import 'package:proj/components/orgs_navigation_bar.dart';
import 'package:proj/components/orgs_search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              SizedBox(height: 20),
              OrgsHighlightsCardsList(cards: [
                OrgsHighlightsCard(
                  img: 'assets/images/logo.png',
                  title: 'Orgs commerce',
                  description: 'Uma descrição',
                  color: Color.fromRGBO(42, 159, 133, 1),
                ),
                OrgsHighlightsCard(
                  img: 'assets/images/logo.png',
                  title: 'Lorem ipsum',
                  description: 'Uma descrição',
                  color: Color.fromRGBO(42, 159, 133, 1),
                ),
                OrgsHighlightsCard(
                  img: 'assets/images/logo.png',
                  title: 'Frutas gostosas',
                  description: 'Uma descrição',
                  color: Color.fromRGBO(42, 159, 133, 1),
                ),
              ]),
            ],
          ),
        ),
      bottomNavigationBar: OrgsNavigationBar(),
    );
  }
}