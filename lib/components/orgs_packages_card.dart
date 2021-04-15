import 'package:flutter/material.dart';

class OrgsPackagesCard extends StatelessWidget {

  // TODO remover a atribuição dos valores e descomentar o construtor
  final String title = 'Cenouras';
  final String photo = 'assets/images/cenouras.png';
  final String description = 'Lorem ipsum dolor sit amet, consectetur'
  'adipiscing elit. Maecenas tincidunt cursus lectus. Mauris lacinia '
  'pharetra arcu, a fermentum justo vestibulum at. Nam venenatis leo ';
  final String price;

  OrgsPackagesCard({
    // @required this.title,
    // @required this.photo,
    // @required this.description,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          ),
          child: Image.asset(
            photo,
            width: 65,
          ),
        ),
        SizedBox(width: 10),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 18
              ),
            ),
            Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
            SizedBox(height: 10),
            price != null ?
            Text(
              'R\$ $price',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(42, 159, 133, 1),
              ),
            ) : Container(),
            SizedBox(height: 15),
            Divider(),
          ],
        )),
      ],
    );
  }
}
