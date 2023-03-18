import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionList extends StatefulWidget {
  const SuggestionList({super.key});

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  List<String> list = <String>['Freeze tra xanh', 'Tra sua', "Thit bo kho"];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'Suggestion',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
          GridView.count(
              childAspectRatio: 1.35,
              crossAxisCount: 2,
              controller: ScrollController(keepScrollOffset: false),
              crossAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: List.generate(list.length, (index) {
                return InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        child: Image.network(
                            'https://media.loveitopcdn.com/772/fruit-juices-menu-lagom-cafe.png',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                          child: Container(
                        // alignment: Alignment.bottomLeft,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black12,
                              Colors.black,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.only(bottom: 8, left: 8),
                        child: Text(
                          list[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ))
                    ],
                  ),
                );
              }))
        ],
      ),
    );
  }
}
