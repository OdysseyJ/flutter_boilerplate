import 'package:architecture_app/domain/model/postWithPagenation.dart';

abstract class PostRepositoryInterface {
  Future<PostWithPagination> getPosts();
}
