import 'package:dio/dio.dart';
import 'package:shop_demo/config/http_config.dart';

class DioClient {
  late Dio _dio;

  DioClient() {
    // 初始化 Dio 实例，并配置基础选项
    _dio = Dio(
      BaseOptions(
        baseUrl: HttpConfig.baseUrl, // 替换为你的基础 API URL
        connectTimeout:
            const Duration(milliseconds: HttpConfig.timeout), // 连接超时时间
        receiveTimeout:
            const Duration(milliseconds: HttpConfig.receiveTimeout), // 接收超时时间
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  // 通用请求方法
  Future<dynamic> request(
    String path, {
    required String method, // 请求方法
    Map<String, dynamic>? params, // 查询参数
    Map<String, dynamic>? data, // 请求体
    String? token, // 可选的 Token
  }) async {
    try {
      // 设置 Authorization 头，如果有 token
      Options options = Options(
        method: method,
        headers: token != null ? {'Authorization': 'Bearer $token'} : null,
      );

      // 发起请求
      Response response = await _dio.request(
        path,
        queryParameters: params, // GET 请求的查询参数
        data: data, // POST、PUT 等请求的 body
        options: options,
      );

      // 返回响应数据
      return response.data;
    } on DioException catch (e) {
      // 错误处理
      if (e.response != null) {
        // 服务端返回的错误
        print('Error response: ${e.response!.data}');
        throw e.response!.data;
      } else {
        // 其他错误，例如网络问题
        print('Error message: ${e.message}');
        throw '请求失败: ${e.message}';
      }
    }
  }
}
