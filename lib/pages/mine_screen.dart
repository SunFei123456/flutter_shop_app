import 'package:flutter/material.dart';

class MineScreen extends StatelessWidget {
  const MineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 点击该按钮进入了二级页面, 该页面是网络请求展示数据的列表页面
          ElevatedButton(onPressed: (){ Navigator.pushNamed(context, "/article_list"); }, child: const Text("进入到网络请求展示数据的列表页面",style: TextStyle(fontSize: 20),)),
        ],
      ),
    );
  }
}