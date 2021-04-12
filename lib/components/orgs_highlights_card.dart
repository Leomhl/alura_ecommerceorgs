import 'package:flutter/material.dart';

class OrgsHighlightsCard extends StatelessWidget {
  final String img;
  final String title;
  final Color color;
  final String description;

  OrgsHighlightsCard({this.img, this.title, this.description, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Container(
        width: 450,
        decoration: BoxDecoration(
            color: Color.fromRGBO(254, 238, 210, 1),
            borderRadius: BorderRadius.circular(20),
        ),

        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo_icon.png',
                    width: 30,
                  ),
                  SizedBox(height: 5),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(70, 70, 70, 1)
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(70, 70, 70, 1)
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      'Ver agora',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Image.asset('assets/images/fruits.png')
              ),
            ],
          )
        ),
      ),
    );
  }
}