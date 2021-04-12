import 'package:flutter/material.dart';

import 'orgs_highlights_card.dart';

class OrgsHighlightsCardsList extends StatelessWidget {
  final List<OrgsHighlightsCard> cards;

  OrgsHighlightsCardsList({this.cards});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 160.0,
        child: new ListView(
            scrollDirection: Axis.horizontal,
            children: cards
        )
    );
  }
}

