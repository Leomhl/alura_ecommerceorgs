import 'package:flutter/material.dart';
import 'package:proj/components/orgs_packages_card.dart';

class ProducerDetailsScreen extends StatelessWidget {

  // TODO Remover os valores estáticos e descomentar o
  // construtor quando for utilizar com dados reais
  final String title = 'Manjericão';
  final String description = 'Produtos orgânicos frescos colhidos todas as manhãs '
  'das nossas hortas. Trabalhamos apenas com produtos sem agrotóxicos!';
  final String logo = 'assets/images/store1.png';

  // ProducerDetailsScreen({
  //   @required this.description,
  //   @required this.title,
  //   @required this.logo
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
          Stack(
            children: [
              Image.asset(
                'assets/images/bg_producer.png',
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 150, 20, 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(logo),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        child: Text(
                          title,
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              description,
              style: TextStyle(
                color: Color.fromRGBO(163, 163, 163, 1),
                fontSize: 18
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Cestas',
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
                  OrgsPackagesCard(),
                  OrgsPackagesCard(),
                  OrgsPackagesCard(),
                  OrgsPackagesCard(),
                  OrgsPackagesCard(),
                  OrgsPackagesCard(),
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
