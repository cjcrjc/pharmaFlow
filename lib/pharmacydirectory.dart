import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'botnavbar.dart';
import 'directorybutton.dart';

class PharmacyDirectory extends StatelessWidget {
  const PharmacyDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemScrollController itemScrollController = ItemScrollController();
    final ItemPositionsListener itemPositionsListener =
        ItemPositionsListener.create();

    return Scaffold(
        bottomNavigationBar: const BottomNavigationBar1(),
        appBar: AppBar(title: const Text('Ailments')),
        body: ScrollablePositionedList.builder(
          itemCount: 1,
          itemPositionsListener: itemPositionsListener,
          itemScrollController: itemScrollController,
          itemBuilder: (context, index) => Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                const DirectoryButton(label: 'Covid', directory: '/Covid'),
                const DirectoryButton(label: 'Pink Eye', directory: '/PinkEye'),
                const DirectoryButton(label: 'UTI', directory: '/UTI'),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Hay Fever')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Oral Thrush')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Dermatitis')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Menstrual Cramps')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Acid Reflux')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Hemorrhoids')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Cold Sores')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Impetigo')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Insect Bites and Hives')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Tick Bites')),
                ElevatedButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {},
                    child: const Text('Sprains and Strains')),
              ])),
        ));
  }
}

// hay fever (allergic rhinitis);
// oral thrush (candidal stomatitis);
// pink eye (conjunctivitis; bacterial, allergic and viral);
// dermatitis (atopic, eczema, allergic and contact);
// menstrual cramps (dysmenorrhea);
// acid reflux (gastroesophageal reflux disease (GERD));
// hemorrhoids;
// cold sores (herpes labialis);
// impetigo;
// insect bites and hives;
// tick bites (post-exposure prophylaxis to prevent Lyme disease);
// sprains and strains (musculoskeletal);
// urinary tract infections (UTIs).
