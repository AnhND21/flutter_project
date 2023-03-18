import 'package:flutter/material.dart';

class StoryList extends StatefulWidget {
  final List<String> list;
  const StoryList({Key? key, required this.list}) : super(key: key);

  @override
  State<StoryList> createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Stories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 30,
                offset: const Offset(1, 1), // cha
              )
            ]),
            height: 230,
            width: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                // physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi9ZHHOdpujwX7IqbfIfyXQvNRDsEQKHq0OA&usqp=CAU',
                          fit: BoxFit.cover,
                          width: 132,
                          height: 200,
                        ),
                      ),
                      Positioned(
                          child: Container(
                        width: 132,
                        height: 230,
                        // color: Colors.amber,
                        // margin: const EdgeInsets.only(bottom: 24),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius:
                                    BorderRadius.circular(100), //<-- SEE HERE
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                child: Image.network(
                                  'https://bedental.vn/wp-content/uploads/2022/11/hot-girl.jpg',
                                  fit: BoxFit.cover,
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Text(
                              '@user_name',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ))
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    width: 16,
                  );
                },
                itemCount: widget.list.length),
          ),
        ),
      ],
    );
  }
}
