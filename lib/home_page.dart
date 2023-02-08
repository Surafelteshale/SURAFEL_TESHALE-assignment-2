import 'package:class_first_assignment/CatagoriesWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'meals.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xff00a368),
        body:SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff165967),
                      Color(0xff23aea6),
                    ],
                  )
              ),
              child: Container(
                child: Stack(
                  children: [ Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20,left: 15,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 1,right: 8,left: 8),
                              child: const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 30,
                            ),),
                          ],
                        ),
                      ),
                      //welcome text
                      Container(
                        alignment: Alignment.centerLeft,
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset("images/meaza1.png",
                          height: 200,
                          width: 300,
                        ),
                      ),
                      //search wigdet
                      Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 50,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 150,),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 250,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Anything you want?',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CatagoriesWidget(),
                                meals(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),],
                ),
              ),
            ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xfffac585),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded),
              label: ('category')
          ),
        ],
      ),
        // bottomNavigationBar: Stack(
        //   children:[ Container(
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         boxShadow: [
        //           BoxShadow(
        //               color: Colors.grey.withOpacity(0.5),
        //               spreadRadius: 1,
        //               blurRadius: 8
        //           ),
        //         ],
        //         gradient: const LinearGradient(
        //           begin: Alignment.topRight,
        //           end: Alignment.bottomLeft,
        //           colors: [
        //             Color(0xff165967),
        //             Color(0xff23aea6),
        //           ],
        //         )
        //     ),
        //     child: NavigationBar(
        //       backgroundColor: Colors.transparent,
        //       destinations: const [
        //         NavigationDestination(icon: Icon(Icons.home,color: Color(0xfffac585),),label: 'Home',),
        //         NavigationDestination(icon: Icon(Icons.location_on_sharp,color: Colors.white,),label: '',),
        //         NavigationDestination(icon: Icon(Icons.search,color: Colors.white,),label: '',),
        //         NavigationDestination(icon: Icon(Icons.person,color: Colors.white,),label: '',),
        //       ],
        //     ),
        //   ),]
        // ),
    );
  }
}
