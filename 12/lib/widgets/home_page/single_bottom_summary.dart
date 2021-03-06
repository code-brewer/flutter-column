import 'package:flutter/material.dart';

import 'package:two_you_friend/router.dart';
import 'package:two_you_friend/styles/text_syles.dart';

/// 帖子概要信息
///
/// 包括帖子的标题，帖子描述和帖子中的图片
class SingleBottomSummary extends StatelessWidget {
  ///帖子 id
  final String articleId;

  /// 帖子标题
  final String title;

  /// 帖子概要描述信息
  final String summary;

  /// 构造函数
  const SingleBottomSummary({Key key, this.articleId, this.title, this.summary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 120)),
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () => Router()
                .open(context, "tyfapp://contentpage?articleId=${articleId}"),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyles.commonStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  summary,
                  style: TextStyles.commonStyle(0.8, Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
