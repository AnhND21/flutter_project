import 'package:flutter/material.dart';
import 'package:flutter_application/news/models/news.dart';
import 'package:flutter_application/news/widgets/news_list.dart';
import 'package:flutter_application/news/widgets/story_list.dart';
import 'package:flutter_svg/svg.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> list = <News>[];

  @override
  void initState() {
    super.initState();
    list.add(News(
        1,
        'authorName 1',
        "Setting the length directly may take time proportional to the new length, and may change the internal capacity so that a following add operation will need to immediately increase the buffer capacity. Other list implementations may have different performance behavior",
        "Aug 12, 2022",
        [
          'https://icdn.dantri.com.vn/thumb_w/640/2020/12/16/ngam-dan-hot-girl-xinh-dep-noi-bat-nhat-nam-2020-docx-1608126694049.jpeg',
          'https://bedental.vn/wp-content/uploads/2022/11/hot-girl.jpg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441451966.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
        ],
        [],
        [],
        10,
        30,
        0));
    list.add(News(
        1,
        'authorName 1',
        "Setting the length directly may take time proportional to the new length, and may change the internal capacity so that a following add operation will need to immediately increase the buffer capacity. Other list implementations may have different performance behavior",
        "Aug 12, 2022",
        [],
        [],
        [],
        10,
        30,
        0));
    list.add(News(
        1,
        'authorName 1',
        "Setting the length directly may take time proportional to the new length, and may change the internal capacity so that a following add operation will need to immediately increase the buffer capacity. Other list implementations may have different performance behavior",
        "Aug 12, 2022",
        [
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
        ],
        [],
        [],
        10,
        30,
        0));
    list.add(News(
        1,
        'authorName 1',
        "Setting the length directly may take time proportional to the new length, and may change the internal capacity so that a following add operation will need to immediately increase the buffer capacity. Other list implementations may have different performance behavior",
        "Aug 12, 2022",
        [
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
        ],
        [],
        [],
        10,
        30,
        0));
    list.add(News(
        1,
        'authorName 1',
        "Setting the length directly may take time proportional to the new length, and may change the internal capacity so that a following add operation will need to immediately increase the buffer capacity. Other list implementations may have different performance behavior",
        "Aug 12, 2022",
        [
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
        ],
        [],
        [],
        10,
        30,
        0));
    list.add(News(
        1,
        'authorName 1',
        "Setting the length directly may take time proportional to the new length, and may change the internal capacity so that a following add operation will need to immediately increase the buffer capacity. Other list implementations may have different performance behavior",
        "Aug 12, 2022",
        [
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
          'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
        ],
        [],
        [],
        10,
        30,
        0));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: SizedBox(
        height: double.infinity,
        // color: Colors.white,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Boss News',
                          style: TextStyle(
                              fontSize: 24,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/notification');
                            },
                            child: Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/svgs/bell.svg',
                                  height: 20.0,
                                  width: 20.0,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                Positioned(
                                    child: Container(
                                  margin: const EdgeInsets.only(
                                    left: 8,
                                  ),
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/chat');
                            },
                            child: SvgPicture.asset(
                              'assets/svgs/chat.svg',
                              height: 20.0,
                              width: 20.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.all(16),
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 30,
                          offset:
                              const Offset(1, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(16)),
                                    child: Image.network(
                                      'https://bedental.vn/wp-content/uploads/2022/11/hot-girl.jpg',
                                      width: 32,
                                      height: 32,
                                      fit: BoxFit.cover,
                                    )),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'What is going on?',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.photo,
                                          color: Colors.grey[300]),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 8.0, top: 2),
                                        child: Text(
                                          'Add photo',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.video_call,
                                        color: Colors.grey[300],
                                        size: 28,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 8.0, top: 2),
                                        child: Text(
                                          'Add video',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  const StoryList(
                      list: ['1', '2', '4', '5', '21', '321', '232']),
                  NewsFeedList(list: list)
                ]),
          ),
        ),
      ),
    );
  }
}
