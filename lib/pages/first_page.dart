import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/properties/location_pin.dart';
import '../properties/appbar.dart';
import 'dart:math';


class FirstpageController extends GetxController {
  final RxInt selectedContainerIndex = 0.obs;
  List<String> daysOfWeek = ['木', '金', '土', '日', '月', '火', '水'];
  List<String> dates = ['26', '27', '28', '29', '30', '31', '1'];

  void handleItemSelection(int index) {
    selectedContainerIndex.value = index;
  }
}

class Firstpage extends StatelessWidget {
  FirstpageController controller = Get.put(FirstpageController());

  Random random = Random();

  Firstpage({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.0275,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFAAA14),
                      Color(0xFFFFD78D),
                    ],
                    begin: Alignment(-1.0, -1.0),
                    end: Alignment(1.0, 1.0),
                    stops: [0.0168, 0.5716],
                  ),
                ),
                child: Center(
                  child: Text(
                    "2022年 5月 26日（木）",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    7,
                    (index) => GestureDetector(
                      onTap: () {
                        controller.handleItemSelection(index);
                      },
                      child: Obx(() => Container(
                            width: 44,
                            height: 67,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: controller.selectedContainerIndex.value ==
                                      index
                                  ? Color(0xFFFAAA14)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  controller.daysOfWeek[index],
                                  style: TextStyle(
                                    color: controller
                                                .selectedContainerIndex.value ==
                                            index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  controller.dates[index],
                                  style: TextStyle(
                                    color: controller
                                                .selectedContainerIndex.value ==
                                            index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/pic1front.png',
                              width: MediaQuery.of(context).size.width * 0.9,
                              height:
                                  MediaQuery.of(context).size.height * 0.248,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '介護有料老人ホームひまわり倶楽部の介護職／ヘ\n'
                                    'ルパー求人（パート／バイト）',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        color: Colors.orangeAccent[100],
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '介護付き有料老人ホーム',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Color(0xFFFAAA14),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '¥ 6,000',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.0),
                                  Text("5月 31日（水）08:00 ~ 17:00"),
                                  Text("北海道札幌市東雲町3丁目916番地17号"),
                                  Text("交通費 300円"),
                                  SizedBox(height: 4.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "住宅型有料老人ホームひまわり倶楽部",
                                          style: TextStyle(fontSize: 14.0),
                                        ),
                                      ),
                                      Icon(Icons.favorite_border),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/pic2front.png',
                              width: MediaQuery.of(context).size.width * 0.9,
                              height:
                                  MediaQuery.of(context).size.height * 0.248,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '介護有料老人ホームひまわり倶楽部の介護職／ヘ\n'
                                    'ルパー求人（パート／バイト）',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        color: Colors.orangeAccent[100],
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '介護付き有料老人ホーム',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Color(0xFFFAAA14),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '6,000円 ',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.0),
                                  Text("5月 31日（水）08:00 ~ 17:00"),
                                  Text("北海道札幌市東雲町3丁目916番地17号"),
                                  Text("交通費 300円"),
                                  SizedBox(height: 4.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "住宅型有料老人ホームひまわり倶楽部",
                                          style: TextStyle(fontSize: 14.0),
                                        ),
                                      ),
                                      Icon(Icons.favorite_border),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width *.8450,
            bottom: MediaQuery.of(context).size.height *.160,

            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
                color: Colors.white
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on_outlined),
              ),
            ),
          ),        ],
      ),
    );
  }
}
