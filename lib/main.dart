import 'package:flutter/material.dart';
import 'package:flutter_app/Code/my_app_01.dart';
import 'package:flutter_app/Code/my_button_02.dart';
import 'package:flutter_app/Code/my_image_03.dart';
import 'package:flutter_app/Code/my_portrait_04.dart';
import 'package:flutter_app/Code/my_home_page_05.dart';
import 'package:flutter_app/Code/my_item_page_06.dart';
import 'package:flutter_app/Code/my_dynamic_list_page_07.dart';
import 'package:flutter_app/Code/my_grid_08.dart';
import 'package:flutter_app/Code/my_padding_09.dart';
import 'package:flutter_app/Code/my_icon_container_10.dart' as IconContainer;
import 'package:flutter_app/Code/my_flex_11.dart' as Flex;
import 'package:flutter_app/Code/my_stack_12.dart';
import 'package:flutter_app/Code/my_layout_13.dart';
import 'package:flutter_app/Code/my_evlevated_button_14.dart';
import 'package:flutter_app/Code/my_wrap_15.dart';
import 'package:flutter_app/Code/my_stateful_widgets_16.dart' as stateful;

void main() {

  // user-defined object
  // runApp(MaterialApp(
  //   home: Scaffold(
  //     appBar: AppBar(title: Text("Hello Flutter")),
  //     body: Column(children: const [
        // MyApp(),
        // MyButton(),
        // MyImage(),
        // MyPortrait(), // implemented by Container()
        // SizedBox(height: 30), // used for controlling distance between objects, could also use margin: EdgeInsets
        // MyPortrait2()
  //     ] // implemented by ClipOval()
  //     )
  // )));

  // My Home page
  // runApp(MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(title: const Text("Flutter App"),),
        // body: const MyHomePageColumn()
        // body: const MyHomePageListView(),
        // body: const MyItemPage(),
        // body: MyDynamicList(),
        // body: MyDynamicList2(),
        // body: const MyGrid(),
        // body: const MyGrid2(),
        // body: const MyGridDynamic(),
        // body: const MyPadding(),
        // body: IconContainer.MyIconContainer(Icons.facebook, color: Colors.lightBlue),
        // body: const IconContainer.MyIconContainerHomePage(),
        // body: const Flex.MyFlexBar(),
        // body: const Flex.MyFlexView(),
        // body: const MyStackContainer(),
        // body: const MyStackListView(),
        // body: const MyAlignWidget(),
        // body: const MyRatioContainer(),
        // body: const MyCard()
        // body: const MyDynamicCards()
        // body: const MyElevatedButton()
        // body: const MyWrap(),
        // body: const MyWrap2(),
      // )));

  // My Stateful Home Page
  runApp(const stateful.MyApp());
}


