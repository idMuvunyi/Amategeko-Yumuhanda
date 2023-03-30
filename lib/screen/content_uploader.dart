import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:amategeko/controller/question_paper/data_uploader.dart';

class ContentUploader extends StatelessWidget {
  ContentUploader({super.key});

  // bring in controller to upload data to server
  DataUploader controller = Get.put(DataUploader());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Uploading content...!'),
      ),
    );
  }
}
