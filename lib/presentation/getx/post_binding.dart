import 'package:architecture_app/presentation/getx/post_controller.dart';
import 'package:get/get.dart';

class PostBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PostController());
  }
}
