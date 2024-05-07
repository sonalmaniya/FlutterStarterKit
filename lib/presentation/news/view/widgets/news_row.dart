import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../navigation/navigation.dart' show NewsDetailScreenRoute;
import '../../models/news_model.dart';

class NewsRow extends StatelessWidget {
  const NewsRow({
    required this.news,
    super.key,
  });

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).navigate(NewsDetailScreenRoute(news: news));
      },
      child: ListTile(
        title: Text(news.title),
        subtitle: Text(news.body),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: Colors.grey,
        ),
      ),
    );
  }
}
