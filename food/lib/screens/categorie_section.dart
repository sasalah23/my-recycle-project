import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:food/screens/annonce_screen.dart';

class CategorieSection extends StatelessWidget {
  List dechet = [
    "dechet1",
    "dechet2",
    "dechet3",
    "dechet4",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color(0xfff2f8ff),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: dColor,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AnnonceScreen(
                                          dechet: "${dechet[index]}",
                                        ),
                                      ));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: Image.asset(
                                    "images/${dechet[index]}.jpg",
                                    height: 100,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(dechet[index],
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: dColor,
                                                fontWeight: FontWeight.w500)),
                                        Row()
                                      ])),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
