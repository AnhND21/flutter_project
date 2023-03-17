import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<String> list = <String>['Coffee', 'Meat', 'Fruits', 'Others'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
                child: Text(
              'News',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )),
            TextButton(
              onPressed: () {},
              child: const Text('View all >'),
            )
          ],
        ),
        ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Container(
                height: 8,
                color: Colors.transparent,
              );
            },
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image.network(
                        'https://media.loveitopcdn.com/772/fruit-juices-menu-lagom-cafe.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 4, left: 16),
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
              );
            },
            itemCount: list.length),
      ],
    );
  }
}
