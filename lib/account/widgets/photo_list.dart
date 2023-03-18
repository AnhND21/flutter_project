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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Photos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
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
                  if (index < 4) {
                    if ((index + 1) % 4 == 0) {
                      return StaggeredGridTile.count(
                          crossAxisCellCount: 3,
                          mainAxisCellCount: 1,
                          child: Stack(
                            children: [
                              Image.network(
                                'https://bedental.vn/wp-content/uploads/2022/11/hot-girl.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                              Container(
                                  child: widget.list.length > 4
                                      ? Positioned(
                                          child: Container(
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.black12,
                                                  Colors.black
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter),
                                          ),
                                          child: Text(
                                            '+ ${(widget.list[index].length - 4).toString()}',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
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
                            'https://bedental.vn/wp-content/uploads/2022/11/hot-girl.jpg',
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
      ],
    );
  }
}
