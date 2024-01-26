import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SecondpageController extends GetxController {
  List<String?> exteriorImages = [null, null, null];
}

class Secondpage extends StatelessWidget {
  SecondpageController controller = Get.put(SecondpageController());

  Secondpage({required this.controller});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFA8B1FF),
        appBar: AppBar(
          backgroundColor: Color(0xFFA8B1FF),
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.150,
                  ),
                  Text(
                    'スタンプカード詳細',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.arrow_circle_right_outlined, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              // color: Color(0xFFA8B1FF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mer キッチン",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                  Row(
                    children: [
                      Text("現在の獲得数",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),),
                      Text("30",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600),),
                      Text("個",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height *.030,),
                        SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(margin: EdgeInsets.all(15) ,
                                    height: MediaQuery.of(context).size.height * 0.4,
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 65,
                                                height: 65,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xFFFAA677),
                                                ),
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: MediaQuery.of(context).size.width *.03,),
                                  Container(margin: EdgeInsets.all(15) ,
                                    height: MediaQuery.of(context).size.height * 0.4,
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle, size: 75, color: Color(0xFFFAA677)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(alignment:Alignment.bottomRight,child: Text("2/2",style: TextStyle(fontSize: 20),
                        )),
                        Container(
                          margin: EdgeInsets.all(10), // Adjust the value as needed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("スタンプ獲得履歴",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                              SizedBox(height: MediaQuery.of(context).size.height *.020,),
                              Text("2021 / 11 / 18"),
                              SizedBox(height: MediaQuery.of(context).size.height *.020,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("スタンプを獲得しました。"),
                                  Text("1 個")
                                ],
                              ),

                              SizedBox(height: MediaQuery.of(context).size.height *.020,),
                              Text("2021 / 11 / 18"),
                              SizedBox(height: MediaQuery.of(context).size.height *.020,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("スタンプを獲得しました。"),
                                  Text("1 個")
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

