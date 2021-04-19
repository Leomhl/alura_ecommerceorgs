import 'package:flutter/material.dart';
import 'package:proj/core/app_colors.dart';

class OrgsMenuCard extends StatelessWidget {
  final IconData icon;
  final String text;

  OrgsMenuCard({
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 80,
            height: 80,
            child: Icon(
              icon,
              color: AppColors.darkGrey,
              size: 50,
            ),
          ),
          SizedBox(width: 20),
          Text(
           text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    );
  }
}
