import 'package:flutter/material.dart';

class YouMayLikeList extends StatefulWidget {
  const YouMayLikeList({super.key});

  @override
  State<YouMayLikeList> createState() => _YouMayLikeListState();
}

class _YouMayLikeListState extends State<YouMayLikeList> {
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
              'You may like',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )),
            TextButton(
              onPressed: () {},
              child: const Text('View all >'),
            )
          ],
        ),
        SizedBox(
          child: GridView.count(
            controller: ScrollController(keepScrollOffset: false),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            children: List.generate(list.length, (index) {
              return InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Image.network(
                          'https://media.loveitopcdn.com/772/fruit-juices-menu-lagom-cafe.png',
                          fit: BoxFit.cover),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              'You get 10 times.',
                            )
                          ],
                        ))
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
