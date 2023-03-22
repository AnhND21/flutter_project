import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosList extends StatefulWidget {
  final List<String> list;
  const PhotosList({Key? key, required this.list}) : super(key: key);

  @override
  State<PhotosList> createState() => _PhotosListState();
}

class _PhotosListState extends State<PhotosList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 0.0),
                  child: Text(
                    'Photos',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('View all >'))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 30,
                      offset: const Offset(1, 1), // cha
                    )
                  ]),
              height: 132,
              // width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: StaggeredGrid.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: List.generate(widget.list.length, (index) {
                    return StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 3,
                        child: Stack(
                          children: [
                            Image.network(
                              'https://icdn.dantri.com.vn/thumb_w/640/2021/02/27/diem-danh-7-guong-mat-hot-girl-xinh-dep-noi-bat-trong-thang-2-docx-1614441452345.jpeg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ],
                        ));
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
