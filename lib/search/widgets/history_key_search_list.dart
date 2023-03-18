import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryKeywordList extends StatefulWidget {
  const HistoryKeywordList({super.key});

  @override
  State<HistoryKeywordList> createState() => _HistoryKeywordState();
}

class _HistoryKeywordState extends State<HistoryKeywordList> {
  List<String> list = <String>['Freeze tra xanh', 'Tra sua', "Thit bo kho"];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: const [
                Icon(
                  Icons.history,
                  size: 26,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Recent search',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Container(
                height: 12,
              );
            },
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        // Icon(
                        //   Icons.history,
                        //   size: 22,
                        //   color: Colors.grey[500],
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            list[index],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.close,
                      size: 18,
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
