// 文章相关的请求封装

import 'package:shop_demo/models/article.dart';
import 'package:shop_demo/utils/request.dart';

class ArticleApi {
  // 获取指定的文章类型列表
  static Future getArticleListWithCategory(String category) async {
    DioClient dioClient = DioClient();
    final res =  await dioClient.request(
      // /article/category/JavaScript/list --> 动态的类型参数传递
      '/article/category/$category/list',
      method: 'GET',
    );
    // json model
    List<Article> list = (res['data']['data'] as List).map((e) => Article.fromJson(e)).toList();
    return list;
  }
}
