import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/style_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/screens/home/character_card.dart';

/// The `Home` class is a StatefulWidget that displays a Scaffold with an app bar and a column of styled
/// text widgets for a character list.
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List characters = ['mario', 'luigi', 'peach', 'toad', 'bowser', 'koopa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const StyledTitle('Your Character'),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: characters.length,
                    itemBuilder: (_, index) {
                      return CharacterCard(characters[index]);
                    },
                  ),
                ),
                StyleButton(
                  onPressed: () {},
                  child: const StyleHeading('Create New'),
                )
              ],
            )));
  }
}
