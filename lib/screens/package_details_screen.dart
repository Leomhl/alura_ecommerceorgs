import 'package:flutter/material.dart';
import 'package:proj/components/orgs_packages_card.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';

class PackageDetailsScreen extends StatelessWidget {

  // TODO Remover os valores estáticos e descomentar o
  // construtor quando for utilizar com dados reais
  final String packageName = 'Cenouras';
  final String producer = 'Manjericão';
  final String description = 'Produtos orgânicos frescos colhidos todas as manhãs '
  'das nossas hortas. Trabalhamos apenas com produtos sem agrotóxicos!';
  final String logo = AppImages.logo;
  final String price = '12,00';

  // ProducerDetailsScreen({
  //   @required this.packageName,
  //   @required this.producer,
  //   @required this.description
  //   @required this.logo,
  //   @required this.price,
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Detalhe da empresa',
          style: TextStyle(
              fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.package_details,
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      packageName,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                ),
                Text(
                  '10 km',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(logo, width: 50,),
                ),
                SizedBox(width: 10,),
                Text(
                  producer,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Text(
              description,
              style: TextStyle(
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Text(
              'R\$ $price',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: AppColors.green,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: double.infinity),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: AppColors.green, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: Text('Comprar'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Itens da cesta',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: ListView(
                  children: [
                    OrgsPackagesCard(),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
