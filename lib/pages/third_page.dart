import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../properties/Time_selector.dart';
import '../properties/dropdown.dart';
import '../properties/map.dart';
import '../properties/toggle_button.dart';
import '../properties/value.dart';

class ThirdpageController extends GetxController {
  List<String?> exteriorImages = [null, null, null];
  Rx<GoogleMapController?> mapController = Rx<GoogleMapController?>(null);
}

class Thirdpage extends StatelessWidget {
  ThirdpageController controller = Get.put(ThirdpageController());

  Thirdpage({required this.controller});

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      // Handle first icon tap
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.150,
                  ),
                  Text(
                    '店舗プロフィール編集',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.notifications, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '店舗名',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Mer キッチン',
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      '代表担当者名',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '林田　絵梨花',
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      '店舗電話番号',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '123 - 4567 8910',
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      '店舗住所',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '大分県豊後高田市払田791-13',
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 300.0,
                  child:Image.asset("images/map1.png",fit: BoxFit.cover)
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  children: [
                    Text(
                      '店舗外観',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("（最大3枚まで）")
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    // Display Image Containers
                    _buildImageContainer(controller.exteriorImages[0], 1),
                    SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                    _buildImageContainer(controller.exteriorImages[1], 2),

                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        _pickExteriorImage(controller, 0);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.130,
                        width: MediaQuery.of(context).size.width * 0.300,
                        color: Colors.grey,
                        child: Stack(
                          children: [
                            if (controller.exteriorImages[0] != null)
                              Image.file(
                                File(controller.exteriorImages[0]!),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            if (controller.exteriorImages[0] == null)
                              Center(
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                              ),
                            if (controller.exteriorImages[0] != null)
                              Positioned(
                                top: 0,
                                right: 0,
                                child: IconButton(
                                  icon: Icon(Icons.close),
                                  onPressed: () {
                                    _removeExteriorImage(controller, 0);
                                  },
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      '料理写真',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("（1枚〜3枚ずつ追加してください）")
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic2.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child:Image.asset("images/pic3.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.012,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic4.png",fit: BoxFit.cover,)
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      '店舗内観',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("（1枚〜3枚ずつ追加してください）")
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child:  Image.asset("images/pic5.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child:Image.asset("images/pic6.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.012,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic7.png",fit: BoxFit.cover,)
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      'メニュー写真',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("（1枚〜3枚ずつ追加してください）")
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic8.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic9.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.012,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic2.png",fit: BoxFit.cover,)
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      '営業時間',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      child: TimeSelectorDropdown(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Text("〜"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      child: TimeSelectorDropdown(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  children: [
                    Text(
                      'ランチ時間',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0010,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      child: TimeSelectorDropdown(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Text("〜"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      child: TimeSelectorDropdown(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      'ランチ時間',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("月"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("火"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("水"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("木"),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("金"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("土"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("日"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("祝"),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '料理カテゴリー',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '*',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    MyDropdown()
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      '予算',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0010,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      child: ValueDropdown(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Text("〜"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      child: ValueDropdown(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      'キャッチコピー',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '美味しい！リーズナブルなオムライスランチ！',
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      '座席数',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '40席',
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      'ランチ時間',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("有"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("無"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("有"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("無"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      'ランチ時間',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("有（最大３枚まで）"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: SquareToggle(
                        isSelected: _isSelected,
                        onChanged: (bool isSelected) {
                          print('Toggle selected: $_isSelected');
                        },
                      ),
                    ),
                    Text("無"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic11.png",fit: BoxFit.cover)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic12.png",fit: BoxFit.cover)
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.012,
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset("images/pic13.png",fit: BoxFit.cover)
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  children: [
                    Text(
                      '来店プレゼント名',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'いちごクリームアイスクリーム, ジュース',
                      contentPadding: EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.0400,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFEE7D42).withOpacity(0.7), // Change opacity as needed
                      ),
                    ),
                    child: Text("編集を保存"),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(String? imagePath, int index) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          _pickExteriorImage(controller, index);
        } else {
          _removeExteriorImage(controller, index);
        }
      },
      child: Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            if (imagePath != null && index != 0)
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    _removeExteriorImage(controller, index);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickExteriorImage(
      ThirdpageController controller, int index) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      controller.exteriorImages[index] = pickedFile.path;
    }
  }

  void _removeExteriorImage(ThirdpageController controller, int index) {
    controller.exteriorImages[index] = null;
  }
}
