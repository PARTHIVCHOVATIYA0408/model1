import 'package:flutter/material.dart';
import 'package:model1/model/Git_model.dart';
import 'package:model1/model/common_model_map_of_list.dart';

import '../app_data/student_data.dart';
import '../app_data/map_of_list_model.dart';
import '../model/student_model.dart';

class MapOfListList extends StatefulWidget {
  const MapOfListList({super.key});

  @override
  State<MapOfListList> createState() => _MapOfListListState();
}

class _MapOfListListState extends State<MapOfListList> {
  MobileDataModel? mobileData;
  StudentModel? studentModel;
  
  @override
  void initState() {
    super.initState();
    mobileData = MobileDataModel.fromJson(MobileData.listPhone);
    studentModel = StudentModel.fromJson(StudentData.studentInformation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text("Name:${mobileData!.firstPhone}"),
          Text("Name:${mobileData!.appleceo}"),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        Text("Name :${mobileData!.applelist![index].model}"),
                        Text("Name :${mobileData!.applelist![index].price}"),
                        Text("Name :${mobileData!.applelist![index].model}"),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              itemCount: mobileData!.applelist!.length),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: Column(
              children: [
                Text("data:${studentModel!.student1!.name}"),
                Text("data :${studentModel!.student1!.rollnum}"),
                Text("data :${studentModel!.student1!.course}"),
                Text("data :${studentModel!.student1!.fees}"),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Column(
              children: [
                Text("data:${studentModel!.student2!.name}"),
                Text("data :${studentModel!.student2!.rollnum}"),
                Text("data :${studentModel!.student2!.course}"),
                Text("data :${studentModel!.student2!.fees}"),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.pink,
            child: Column(
              children: [
                Text("data :${studentModel!.student3!.name}"),
                Text("data :${studentModel!.student3!.rollnum}"),
                Text("data :${studentModel!.student3!.course}"),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Column(
              children: [
                Text("data :${studentModel!.student4!.name}"),
                Text("data :${studentModel!.student4!.rollnum}"),
                Text("data :${studentModel!.student4!.course}"),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.brown,
            child: Column(
              children: [
                Text("data :${studentModel!.student6!.name}"),
                Text("data :${studentModel!.student6!.rollnum}"),
                Text("data :${studentModel!.student6!.course}"),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepOrangeAccent,
            child: Column(
              children: [
                Text("data :${studentModel!.student5!.name}"),
                Text("data :${studentModel!.student5!.rollnum}"),
                Text("data :${studentModel!.student5!.course}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
