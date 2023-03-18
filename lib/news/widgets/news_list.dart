import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_application/news/models/news.dart';

class NewsFeedList extends StatefulWidget {
  List<News> list;
  NewsFeedList({Key? key, required this.list}) : super(key: key);

  @override
  State<NewsFeedList> createState() => _NewsFeedListState();
}

class _NewsFeedListState extends State<NewsFeedList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Text(
            'Posts',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        ListView.separated(
            padding: const EdgeInsets.all(0),
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Container();
            },
            itemCount: widget.list.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                margin: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 30,
                      offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Image.network(
                            'https://icdn.dantri.com.vn/thumb_w/640/2020/12/16/ngam-dan-hot-girl-xinh-dep-noi-bat-nhat-nam-2020-docx-1608126694049.jpeg',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.list[index].authorName,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(widget.list[index].createdAt,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(Icons.more_horiz),
                        )
                      ],
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: StaggeredGrid.count(
                            crossAxisCount:
                                widget.list[index].images.isNotEmpty ? 3 : 1,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                            children: List.generate(
                                widget.list[index].images.length, (indexImage) {
                              if (indexImage == 0 &&
                                  widget.list[index].images.length == 1) {
                                return StaggeredGridTile.count(
                                    crossAxisCellCount: 3,
                                    mainAxisCellCount: 2,
                                    child: Image.network(
                                      widget.list[index].images[indexImage],
                                      fit: BoxFit.cover,
                                      // height: 300,
                                    ));
                              }
                              if (indexImage <= 1 &&
                                  widget.list[index].images.length == 2) {
                                return StaggeredGridTile.count(
                                    crossAxisCellCount: 3,
                                    mainAxisCellCount: 1,
                                    child: Image.network(
                                      widget.list[index].images[indexImage],
                                      fit: BoxFit.cover,
                                    ));
                              }
                              if (indexImage < 4) {
                                if ((indexImage + 1) % 4 == 0) {
                                  return StaggeredGridTile.count(
                                      crossAxisCellCount: 3,
                                      mainAxisCellCount: 1,
                                      child: Stack(
                                        children: [
                                          Image.network(
                                            widget
                                                .list[index].images[indexImage],
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                          Container(
                                              child: widget.list[index].images
                                                          .length >
                                                      4
                                                  ? Positioned(
                                                      child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      decoration:
                                                          const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    16)),
                                                        gradient: LinearGradient(
                                                            colors: [
                                                              Colors.black12,
                                                              Colors.black
                                                            ],
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter),
                                                      ),
                                                      child: Text(
                                                        '+ ${(widget.list[index].images.length - 4).toString()}',
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ))
                                                  : const SizedBox())
                                        ],
                                      ));
                                } else {
                                  return StaggeredGridTile.count(
                                      crossAxisCellCount: 1,
                                      mainAxisCellCount: 1,
                                      child: Image.network(
                                        widget.list[index].images[indexImage],
                                        fit: BoxFit.cover,
                                      ));
                                }
                              }
                              return Container();
                            }),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        widget.list[index].content,
                        style: const TextStyle(fontSize: 15),
                        maxLines: 3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              InkWell(
                                child: Row(
                                  children: [
                                    const Icon(CupertinoIcons.heart),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(widget.list[index].totalLike
                                          .toString()),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: InkWell(
                                  child: Row(
                                    children: [
                                      const Icon(CupertinoIcons.chat_bubble_2),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(widget
                                            .list[index].totalComment
                                            .toString()),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Row(
                                  children: [
                                    const Icon(CupertinoIcons
                                        .arrowshape_turn_up_right),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(widget.list[index].totalShare
                                          .toString()),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }
}
