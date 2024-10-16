import 'package:flutter/material.dart';
import 'package:shop_demo/http/article/index.dart';
import 'package:shop_demo/models/article.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  // 定义一个变量用来接收数据 文章列表
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    // 调取接口获取数据
    ArticleApi.getArticleListWithCategory("JavaScript").then((value) {
      // 打印数据
      print('value---------------->: $value');
      setState(() {
        articles.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("文章列表")),
      body: articles.isEmpty
          ? const Center(child: CircularProgressIndicator()) // 显示加载指示器
          : ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return Text(
                    "id: ${article.id} title: ${article.title} description: ${article.user?.nickname}"); 
              },
            ),
    );
  }
}
