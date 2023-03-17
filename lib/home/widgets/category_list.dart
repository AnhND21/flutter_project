import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> list = <String>['Coffee', 'Meat', 'Fruits', 'Others'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Expanded(
                child: Text(
              'Browse category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )),
            TextButton(
              onPressed: () {},
              child: const Text('View all >'),
            )
          ],
        ),
        Container(
          height: 82,
          child: ListView.separated(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Container(
                width: 16,
                height: 1,
                color: Colors.transparent,
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.black12),
                      child: const Icon(CupertinoIcons.ant),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          list[index],
                        ))
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
