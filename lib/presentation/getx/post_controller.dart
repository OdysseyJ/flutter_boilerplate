import 'package:architecture_app/data/network/graphql_client.dart';
import 'package:architecture_app/domain/repository/post/post_repository.dart';
import 'package:architecture_app/presentation/bloc/post_state.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  static PostController get to => Get.find();
  final PostGraphQLRepository postGraphQLRepository =
      PostGraphQLRepository(client: client);

  Rx<PostState> postState = PostState().obs;

  @override
  void onInit() {
    _postLoad();
    super.onInit();
  }

  void _postLoad() async {
    try {
      postState(PostLoading());
      final result = await postGraphQLRepository.getPosts();
      postState(PostLoaded(
        result: result,
      ));
    } catch (error) {
      postState(PostError());
    }
  }
}
