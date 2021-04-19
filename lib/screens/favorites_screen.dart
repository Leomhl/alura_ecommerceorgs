import 'package:flutter/material.dart';
import 'package:proj/components/orgs_stores_card.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';
import 'package:proj/screens/producer_details_screen.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Produtores favoritos',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkGrey
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Produtores que você favoritou',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  StoresCard(
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducerDetailsScreen()),
                      );
                    },
                    img: AppImages.store1,
                    title: 'Manjericão',
                  ),
                  StoresCard(
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducerDetailsScreen()),
                      );
                    },
                    img: AppImages.store4,
                    title: 'Grow',
                  ),
                  StoresCard(
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProducerDetailsScreen()),
                      );
                    },
                    img: AppImages.store5,
                    title: 'Potager',
                  ),
                ],
              ),
            )
            ],
          ),
        ),
    );
  }
}