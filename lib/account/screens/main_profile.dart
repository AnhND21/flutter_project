import 'package:flutter/material.dart';
import 'package:flutter_application/account/widgets/photo_list.dart';
import 'package:flutter_application/account/widgets/profile_header.dart';
import 'package:flutter_application/news/models/news.dart';
import 'package:flutter_application/news/widgets/news_list.dart';
import 'package:flutter_application/news/widgets/story_list.dart';

class MainProfileScreen extends StatefulWidget {
  const MainProfileScreen({super.key});

  @override
  State<MainProfileScreen> createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
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
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SizedBox(
          height: double.infinity,
          // color: Colors.white,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ProfileHeader(),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.all(16),
                            height: 110,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 30,
                                  offset: const Offset(
                                      1, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(children: [
                              Expanded(
                                child: Row(
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
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 2),
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
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 2),
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
                          const SizedBox(
                              child: PhotosList(list: ['1', '2', '4', '5'])),
                          SizedBox(
                            child: NewsFeedList(list: list),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
