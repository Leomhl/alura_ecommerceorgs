import 'package:flutter/material.dart';

class OrgsSpotlightCard extends StatelessWidget {
  final String img;
  final String price;
  final String description;
  final String place;
  final Color color;

  OrgsSpotlightCard({
    @required this.img,
    @required this.price,
    @required this.description,
    @required this.color,
    @required this.place
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Container(
        width: 370,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'R\$ $price',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(70, 70, 70, 1)
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                          place,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(70, 70, 70, 1)
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    color: Color.fromRGBO(254, 238, 210, 1),
                    child: Image.asset(img),
                    width: 120,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}