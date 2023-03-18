import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/search/widgets/history_key_search_list.dart';
import 'package:flutter_application/search/widgets/suggestion_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  textAlignVertical: TextAlignVertical.center,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                  onChanged: (value) => setState(() {}),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      size: 26,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 244, 255),
                    hintText: 'Search...',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16), //Imp Line
                    isDense: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                  ),
                ),
                const HistoryKeywordList(),
                const SuggestionList(),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
