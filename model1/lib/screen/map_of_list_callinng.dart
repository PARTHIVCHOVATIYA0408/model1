import 'package:flutter/material.dart';
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
          Text("data:${studentModel!.student1!.name}"),
          Text("data :${studentModel!.student1!.rollnum}"),
          Text("data :${studentModel!.student1!.course}"),
        ],
      ),
    );
  }
}
