import 'package:flutter/material.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';

class OrgsRateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(20)
      ),
      height: 100,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Avalie o app',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  )
                ),
                SizedBox(height: 7),
                Text(
                  'Sua opinião é muito importante',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ],
            ),
            Expanded(child:
              Image.asset(AppImages.star)
            ),
          ],
        ),
      ),
    );
  }
}
