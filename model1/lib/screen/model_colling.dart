import 'package:flutter/material.dart';
import 'package:model1/app_data/common_model.dart';
import 'package:model1/model/common_model_data.dart';

class ModelCalling extends StatefulWidget {
  const ModelCalling({super.key});

  @override
  State<ModelCalling> createState() => _ModelCallingState();
}

class _ModelCallingState extends State<ModelCalling> {
  CommonModel? commonModel;
  @override
  void initState() {
    super.initState();
    commonModel = CommonModel.fromJson(AppData.listData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("data:${commonModel!.number!}"),
          Text("data:${commonModel!.ceo!}"),
          Text("data:${commonModel!.phone!}"),
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            itemCount: commonModel!.phoneList!.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text("Model:${commonModel!.phoneList![index].model}"),
                        Text("Price:${commonModel!.phoneList![index].price}"),
                      ],
                    ),
                  ),
                ],
              );
            },
          ))
        ],
      ),
    );
  }
}
