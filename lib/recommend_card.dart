import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RecommendCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String offerEnds;
  final String startPrices;

  RecommendCard({
    @required this.imgUrl,
    @required this.title,
    @required this.offerEnds,
    @required this.startPrices,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
          print("Go to offer!");
        },
        child: Container(
          width: 380,
          child: Row(
            children: [
              SizedBox(
                width: 130,
                height: 130,
                child: Image.asset(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Feather.tag,
                          color: Colors.grey[500],
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          offerEnds,
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      startPrices,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
