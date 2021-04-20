import 'package:architecture_app/domain/repository/post/post_state.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  RxString helloWorld = "hello world".obs;
  Rx<PostState> postState = PostInitial().obs;

  @override
  void onInit() {
    super.onInit();
  }
}
