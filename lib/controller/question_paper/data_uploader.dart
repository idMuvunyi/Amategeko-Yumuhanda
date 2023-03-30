import 'package:get/get.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadDataToFirebase();
    super.onReady();
  }

  void uploadDataToFirebase() {
    print("Data uplaoding");
  }
}
