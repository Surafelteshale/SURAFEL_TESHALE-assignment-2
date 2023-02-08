import 'package:flutter/material.dart';

class CatagoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfffac585),
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfffac585),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          //so now can scroll
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //for(int i=1; i<6; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfffac585),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        'Habesha',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Catalog_side(),
              Catalog_side(),
              Catalog_side(),
              Catalog_side(),
              Catalog_side(),

        ]  ),
        )
      ],
    );
  }
}

class Catalog_side extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
          )
        ],
      ),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Text(
              'Food types',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfffac585)),
            ),
          )
        ],
      ),
    );
  }
}
