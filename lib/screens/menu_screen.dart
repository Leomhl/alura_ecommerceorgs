import 'package:flutter/material.dart';
import 'package:proj/components/orgs_menu_card.dart';
import 'package:proj/components/orgs_rate_app.dart';
import 'package:proj/core/app_colors.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menu',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkGrey
                ),
              ),
              SizedBox(height: 20),
              OrgsRateApp(),
              SizedBox(height: 30),
              OrgsMenuCard(
                text: 'Início',
                icon: Icons.home
              ),
              Divider(),
              OrgsMenuCard(
                  text: 'Favoritos',
                  icon: Icons.favorite
              ),
              Divider(),
              OrgsMenuCard(
                  text: 'Perfil',
                  icon: Icons.person
              ),
              Divider(),
              OrgsMenuCard(
                  text: 'Ajuda',
                  icon: Icons.help
              ),
              Divider(),
              OrgsMenuCard(
                  text: 'Sair',
                  icon: Icons.logout
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}