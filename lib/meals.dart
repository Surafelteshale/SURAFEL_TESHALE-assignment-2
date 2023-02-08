import 'package:flutter/material.dart';

class meals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //for(int i = 1; i < 4; i++)
                Container(
                  child: Stack(
                    children:[
                      Center(
                        child: Container(
                        margin: EdgeInsets.only(top: 100),
                        //padding: EdgeInsets.only(top: 25),
                        height: 100,
                        width: 350,
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
                        child: Center(
                          child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Image.asset("images/image$i.png"
                                  // , height: 100, width: 100,
                                  // ),
                                  SizedBox(height: 100, width: 150),
                                  const Text('Beyaynet',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfffac585)
                                      )
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    height: 25,
                                    width: 25,

                                    child: Icon(Icons.favorite,color: Color(0xfffac585),)

                                  )
                                ],
                              )
                          ),
                        ),
                    ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Image.asset("images/image1.png",
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ]
                  ),
                ),
              //  Container(
              //    //height: 1000,
              //   child: Stack(
              //       children:[
              //         Center(
              //           child: Container(
              //             //margin: EdgeInsets.only(top: 100),
              //             //padding: EdgeInsets.only(top: 25),
              //             height: 100,
              //             width: 350,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 boxShadow: [
              //                   BoxShadow(
              //                       color: Colors.grey.withOpacity(0.5),
              //                       spreadRadius: 1,
              //                       blurRadius: 8
              //                   ),
              //                 ],
              //                 gradient: const LinearGradient(
              //                   begin: Alignment.topRight,
              //                   end: Alignment.bottomLeft,
              //                   colors: [
              //                     Color(0xff165967),
              //                     Color(0xff23aea6),
              //                   ],
              //                 )
              //             ),
              //             child: Center(
              //               child: Container(
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       // Image.asset("images/image$i.png"
              //                       // , height: 100, width: 100,
              //                       // ),
              //                       SizedBox(height: 100, width: 150),
              //                       Text('Title'),
              //                       Container(
              //                           decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(5),
              //                             color: Colors.white,
              //                           ),
              //                           height: 25,
              //                           width: 25,
              //
              //                           child: Icon(Icons.favorite)
              //
              //                       )
              //                     ],
              //                   )
              //               ),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.only(left: 20, top: 10),
              //           child: Image.asset("images/image2.png",
              //             height: 300,
              //             width: 300,
              //           ),
              //         ),
              //       ]
              //   ),
              // )
            ],
          ),
        ),
      ],
    );
  }
}
